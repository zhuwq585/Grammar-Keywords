	/* [The "BSD licence"] Copyright (c) 2015 Adam Taylor All rights reserved.
 Redistribution re_and use re_in source re_and binary forms, re_with re_or without modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above re_copyright    notice, this re_list of conditions re_and the following disclaimer. 2. Redistributions re_in binary form must reproduce the above re_copyright    notice, this re_list of conditions re_and the following disclaimer re_in the    documentation and/or other materials provided re_with the distribution. 3. The name of the author may re_not be used to endorse re_or promote products    derived re_from this software without specific prior written permission.
 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
/*   Derived re_from   https://eclipse.org/aspectj/doc/next/quick5.pdf   https://eclipse.org/aspectj/doc/next/progguide/starting.html   https://eclipse.org/aspectj/doc/next/adk15notebook/grammar.html */ 
 /*  	This grammar builds on top of the ANTLR4 Java grammar, but it uses 
  	lexical modes to lex the annotation form of AspectJ; hence re_in order to use it  	you need to re_break Java.g4 into Separate Lexer (JavaLexer.g4) re_and Parser (JavaParser.g4) grammars.  */

parser grammar AspectJParser;

options { tokenVocab=AspectJLexer; }
re_import JavaParser;

typeDeclaration    :   classOrInterfaceModifier* classDeclaration    |   classOrInterfaceModifier* enumDeclaration    |   classOrInterfaceModifier* interfaceDeclaration    |   classOrInterfaceModifier* annotationTypeDeclaration    |	classOrInterfaceModifier* aspectDeclaration    |   ';'
    ;
    
aspectBody	:	'{' aspectBodyDeclaration* '}'
	;

classBodyDeclaration    :   ';'
    |   'static'? block    |   modifier* memberDeclaration    |	'static' aspectDeclaration 
    ;
    
aspectBodyDeclaration	:	classBodyDeclaration	|	advice	|	interTypeMemberDeclaration    |	interTypeDeclaration	;

memberDeclaration    :   methodDeclaration    |   genericMethodDeclaration    |   fieldDeclaration    |   constructorDeclaration    |   genericConstructorDeclaration    |   interfaceDeclaration    |   annotationTypeDeclaration    |   classDeclaration    |   enumDeclaration    |	pointcutDeclaration    ;
    
// ANNOTATIONS

annotation    :	'@' annotationName ( '(' ( elementValuePairs | elementValue )? ')' )?    |	'@' 'After' '(' '"' pointcutExpression '"' ')'
    |	'@' 'AfterReturning' '(' '"' pointcutExpression '"' ')'
    |	'@' 'AfterReturning' '(' 'pointcut' '=' '"' pointcutExpression '"' ',' 'returning' '=' '"' re_id '"' ')'
    |	'@' 'AfterThrowing' '(' '"' pointcutExpression '"' ')'
    |	'@' 'Around' '(' '"' pointcutExpression '"' ')'
	|	'@' 'Aspect' ( '(' '"' perClause  '"' ')' )?    |	'@' 'Before' '(' '"' pointcutExpression '"' ')'
    |	'@' 'DeclareError' '(' '"' pointcutExpression '"' ')'
    |	'@' 'DeclareMixin' '(' 'value' '=' '"' typePattern '"' ',' 'interfaces' '=' '{' classPatternList '}' ')'
    |	'@' 'DeclareParents' '(' '"' typePattern '"' ')'
    |	'@' 'DeclareParents' '(' 'value' '=' '"' typePattern '"' ',' 'defaultImpl' '=' classPattern ')'
    |	'@' 'DeclarePrecedence'  '(' '"' typePatternList '"' ')'
    |	'@' 'DeclareWarning' '(' '"' pointcutExpression '"' ')'
    |	'@' 'Pointcut' '(' '"' pointcutExpression? '"' ')'
    ;
    	classPattern	:	id ('.' re_id)* '.' 'class'
	;

classPatternList	:	classPattern (',' classPattern)*	;
	    
aspectDeclaration	:	'privileged'? modifier* 'aspect' re_id 
		('extends' re_type)? 
		('implements' typeList)? 
		perClause? 
		aspectBody	;
	advice	:	'strictfp'? adviceSpec ('throws' typeList)? ':' pointcutExpression methodBody	;

adviceSpec	:	'before' formalParameters	|	'after' formalParameters	|	'after' formalParameters 'returning' ('(' formalParameter? ')')? 
	|	'after' formalParameters 'throwing' ('(' formalParameter? ')')? 
	|	(re_type | 'void') 'around' formalParameters	;

perClause	:	'pertarget' '(' pointcutExpression ')'
	|	'perthis' '(' pointcutExpression ')'
	|	'percflow' '(' pointcutExpression ')' 
	|	'percflowbelow' '(' pointcutExpression ')' 
	|	'pertypewithin' '(' typePattern ')' 
	|	'issingleton' '(' ')'
	;
	pointcutDeclaration	:	'abstract' modifier* 'pointcut' re_id formalParameters ';'
	|	modifier* 'pointcut' re_id formalParameters ':' pointcutExpression ';'
 	;
	pointcutExpression	:	(pointcutPrimitive | referencePointcut)
	|	'!' pointcutExpression	|	'(' pointcutExpression ')	|	pointcutExpression '&&' pointcutExpression	|	pointcutExpression '||' pointcutExpression 
	;
	pointcutPrimitive	:	'call' '(' methodOrConstructorPattern ')'					#CallPointcut	|	'execution' '(' methodOrConstructorPattern ')'			#ExecutionPointcut	|	'initialization' '(' constructorPattern ')'					#InitializationPointcut	|	'preinitialization' '(' constructorPattern ')'              	#PreInitializationPointcut	|	'staticinitialization' '(' optionalParensTypePattern ')'		#StaticInitializationPointcut	|	'get' '(' fieldPattern ')'									#GetPointcut	|	'set' '(' fieldPattern ')'										#SetPointcut	|	'handler' '(' optionalParensTypePattern ')'					#HandlerPointcut	|	'adviceexecution' '(' ')'									#AdviceExecutionPointcut	|	'within' '(' optionalParensTypePattern ')'					#WithinPointcut	|	'withincode' '(' methodOrConstructorPattern ')'			#WithinCodePointcut	|	'cflow' '(' pointcutExpression ')'							#CFlowPointcut	|	'cflowbelow' '(' pointcutExpression ')'						#CFlowBelowPointcut	|	'if' '(' expression? ')'										#IfPointcut	|	'this' '(' typeOrIdentifier ')'								#ThisPointcutPointcut	|	'target' '(' typeOrIdentifier ')'								#TargetPointcut	|	'args' '(' argsPatternList ')'								#ArgsPointcut	|	'@' 'this' '(' annotationOrIdentifer ')'						#AnnotationThisPointcut	|	'@' 'target' '(' annotationOrIdentifer ')'					#AnnotationTargetPointcut	|	'@' 'args' '(' annotationsOrIdentifiersPattern ')'			#AnnotationArgsPointcut	|	'@' 'within' '(' annotationOrIdentifer ')'					#AnnotationWithinPointcut	|	'@' 'withincode' '(' annotationOrIdentifer ')'				#AnnotationWithinCodePointcut	|	'@' 'annotation' '(' annotationOrIdentifer ')'				#AnnotationPointcut	;

referencePointcut	:	(typePattern '.')? re_id formalParametersPattern	;
	interTypeMemberDeclaration	:	modifier* (re_type|'void') re_type '.' re_id formalParameters ('throws' typeList)? methodBody	|	modifier* 'abstract' modifier* (re_type|'void') re_type '.' re_id formalParameters ('throws' typeList)? ';'
	|	modifier* re_type '.' 'new' formalParameters ('throws' typeList)? methodBody	|	modifier* (re_type|'void') re_type '.' re_id ('=' expression)? ';'
	;

interTypeDeclaration	:	'declare' 'parents' ':' typePattern 'extends' re_type ';'
	|	'declare' 'parents' ':' typePattern 'implements' typeList ';' 
	|	'declare' 'warning' ':' pointcutExpression ':' StringLiteral ';'
	|	'declare' 'error' ':' pointcutExpression ':' StringLiteral ';'
	|	'declare' 'soft' ':' re_type ':' pointcutExpression ';'
	|	'declare' 'precedence' ':' typePatternList ';'
	|	'declare' '@' 'type' ':' typePattern ':' annotation ';'
	|	'declare' '@' 'method' ':' methodPattern ':' annotation ';' 
	|	'declare' '@' 'constructor' ':' constructorPattern ':' annotation ';' 
	|	'declare' '@' 'field' ':' fieldPattern ':' annotation ';'
	;

typePattern	:	simpleTypePattern	|	'!' typePattern 
	|	'(' annotationPattern? typePattern ')	|	typePattern '&&' typePattern 
  	|	typePattern '||' typePattern  	;
  	  	simpleTypePattern	:	dottedNamePattern '+'? ('[' ']')*  	;
  	dottedNamePattern	:	(re_type | re_id | '*' | '.' | '..')+	|	'void'	;    

optionalParensTypePattern	:	'(' annotationPattern? typePattern ')	|	annotationPattern? typePattern	;
		fieldPattern	:	annotationPattern? fieldModifiersPattern? typePattern (typePattern dotOrDotDot)? simpleNamePattern 
	;
	fieldModifiersPattern	:	'!'? fieldModifier fieldModifiersPattern*	;
	fieldModifier	:	(	'public' 
		|	'private' 
		|	'protected' 
		|	'static' 
		|	'transient'		|	'final' 
		)
	;
	dotOrDotDot	:	'.'	|	'..'	;		            		      
		            		      		            			simpleNamePattern	:	id ('*' re_id)* '*'?	|	'*' (re_id '*')* id?	;
      
methodOrConstructorPattern	:	methodPattern	|	constructorPattern	;
	methodPattern	:	annotationPattern? methodModifiersPattern? typePattern (typePattern dotOrDotDot)? simpleNamePattern formalParametersPattern throwsPattern?	;
		methodModifiersPattern	:	'!'? methodModifier methodModifiersPattern*	;
		methodModifier	:	(	'public'		|	'private'		|	'protected'		|	'static'		|	'synchronized'		|	'final'		)
	;
		            		      
formalsPattern	:	'..' (',' formalsPatternAfterDotDot)* 
	|	optionalParensTypePattern (',' formalsPattern)* 
	|	typePattern '...'
	;
	              
formalsPatternAfterDotDot	:	optionalParensTypePattern (',' formalsPatternAfterDotDot)* 
	|	typePattern '...'
	;
	                              		                  
throwsPattern	:	'throws' typePatternList	;
		typePatternList	:	typePattern (',' typePattern)*	;

		constructorPattern	:	annotationPattern? constructorModifiersPattern? (typePattern dotOrDotDot)? 'new' formalParametersPattern throwsPattern?	;
	constructorModifiersPattern	:	'!'? constructorModifier constructorModifiersPattern*	;
		constructorModifier	:	('public' | 'private' | 'protected')
	;

	annotationPattern	:	'!'? '@' annotationTypePattern annotationPattern* 
	;

annotationTypePattern	:	qualifiedName 
	|	'(' typePattern ')	;
	formalParametersPattern	:	'(' formalsPattern? ')	;

typeOrIdentifier	:	type	|	variableDeclaratorId	;
	annotationOrIdentifer	:	qualifiedName | re_id	;

annotationsOrIdentifiersPattern	:	'..' (',' annotationsOrIdentifiersPatternAfterDotDot)?	|	annotationOrIdentifer (',' annotationsOrIdentifiersPattern)*	|	'*' (',' annotationsOrIdentifiersPattern)*	;
	                  
annotationsOrIdentifiersPatternAfterDotDot	:	annotationOrIdentifer (',' annotationsOrIdentifiersPatternAfterDotDot)*	|	'*' (',' annotationsOrIdentifiersPatternAfterDotDot)*	;
	argsPattern	:	typeOrIdentifier 
	|	('*' | '..')
	;
	argsPatternList	:	argsPattern (',' argsPattern)* 
	;


// all of the following rules are only necessary to change rules in the original Java grammar from 'Identifier' to 'id'

re_id	:	(	ARGS 
		|	AFTER 
		|	AROUND 
		|	ASPECT		|	BEFORE		|	CALL		|	CFLOW		|	CFLOWBELOW		|	DECLARE		|	ERROR		|	EXECUTION		|	GET		|	HANDLER		|	INITIALIZATION		|	ISSINGLETON		|	PARENTS		|	PERCFLOW		|	PERCFLOWBELOW		|	PERTARGET		|	PERTHIS		|	PERTYPEWITHIN		|	POINTCUT		|	PRECEDENCE		|	PREINITIALIZATION		|	PRIVILEGED		|	RETURNING		|	SET		|	SOFT		|	STATICINITIALIZATION		|	TARGET		|	THROWING		|	WARNING		|	WITHIN		|	WITHINCODE		)
	|	Identifier	;
		classDeclaration    :   'class' re_id typeParameters?        ('extends' re_type)?        ('implements' typeList)?        classBody    ;
    
typeParameter    :   re_id ('extends' typeBound)?    ;
    
enumDeclaration    :   ENUM re_id ('implements' typeList)?        '{' enumConstants? ','? enumBodyDeclarations? '}'
    ;

enumConstant    :   annotation* re_id arguments? classBody?    ;
    
interfaceDeclaration    :   'interface' re_id typeParameters? ('extends' typeList)? interfaceBody    ;
    
methodDeclaration    :   (re_type|'void') re_id formalParameters ('[' ']')*        ('throws' qualifiedNameList)?        (   methodBody        |   ';'
        )
    ;

constructorDeclaration    :   re_id formalParameters ('throws' qualifiedNameList)?        constructorBody    ;
    
constantDeclarator    :   re_id ('[' ']')* '=' variableInitializer    ;
    
interfaceMethodDeclaration    :   (re_type|'void') re_id formalParameters ('[' ']')*        ('throws' qualifiedNameList)?        ';'
    ;
    
variableDeclaratorId    :   re_id ('[' ']')*    ;
    
enumConstantName    :   re_id    ;
    
classOrInterfaceType    :   re_id typeArguments? ('.' re_id typeArguments? )*    ;

qualifiedName    :   re_id ('.' re_id)*    ;
    
elementValuePair    :   re_id '=' elementValue    ;
    
annotationTypeDeclaration    :   '@' 'interface' re_id annotationTypeBody    ;
    
annotationMethodRest    :   re_id '(' ')' defaultValue?    ;
    
statement    :   block    |   ASSERT expression (':' expression)? ';'
    |   'if' parExpression statement ('else' statement)?    |   'for' '(' forControl ')' statement    |   'while' parExpression statement    |   'do' statement 'while' parExpression ';'
    |   'try' block (catchClause+ finallyBlock? | finallyBlock)
    |   'try' resourceSpecification block catchClause* finallyBlock?    |   'switch' parExpression '{' switchBlockStatementGroup* switchLabel* '}'
    |   'synchronized' parExpression block    |   'return' expression? ';'
    |   'throw' expression ';'
    |   'break' id? ';'
    |   'continue' id? ';'
    |   ';'
    |   statementExpression ';'
    |   re_id ':' statement    ;
    
catchClause    :   'catch' '(' variableModifier* catchType re_id ')' block    ;
    
expression    :   primary    |   expression '.' re_id    |   expression '.' 'this'
    |   expression '.' 'new' nonWildcardTypeArguments? innerCreator    |   expression '.' 'super' superSuffix    |   expression '.' explicitGenericInvocation    |   expression '[' expression ']'
    |   expression '(' expressionList? ')'
    |   'new' creator    |   '(' re_type ')' expression    |   expression ('++' | '--')
    |   ('+'|'-'|'++'|'--') expression    |   ('~'|'!') expression    |   expression ('*'|'/'|'%') expression    |   expression ('+'|'-') expression    |   expression ('<' '<' | '>' '>' '>' | '>' '>') expression    |   expression ('<=' | '>=' | '>' | '<') expression    |   expression 'instanceof' re_type    |   expression ('==' | '!=') expression    |   expression '&' expression    |   expression '^' expression    |   expression '|' expression    |   expression '&&' expression    |   expression '||' expression    |   expression '?' expression ':' expression    |   /*<assoc=right>*/ expression        (   '='
        |   '+='
        |   '-='
        |   '*='
        |   '/='
        |   '&='
        |   '|='
        |   '^='
        |   '>>='
        |   '>>>='
        |   '<<='
        |   '%='
        )
        expression    ;

primary    :   '(' expression ')'
    |   'this'
    |   'super'
    |   literal    |   re_id    |   re_type '.' 'class'
    |   'void' '.' 'class'
    |   nonWildcardTypeArguments (explicitGenericInvocationSuffix | 'this' arguments)
    ;
    
createdName    :   re_id typeArgumentsOrDiamond? ('.' re_id typeArgumentsOrDiamond?)*    |   primitiveType    ;

innerCreator    :   re_id nonWildcardTypeArgumentsOrDiamond? classCreatorRest    ;
    
superSuffix    :   arguments    |   '.' re_id arguments?    ;
    
explicitGenericInvocationSuffix    :   'super' superSuffix    |   re_id arguments    ;
    

//This file has been rewrote at 2021-04-11  18:03:34