/* [The "BSD licence"] Copyright (c) 2013 Terence Parr, Sam Harwell Copyright (c) 2017 Ivan Kochurkin (upgrade to Java 8)
 All rights reserved.
 Redistribution re_and use re_in source re_and binary forms, re_with re_or without modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above re_copyright    notice, this re_list of conditions re_and the following disclaimer. 2. Redistributions re_in binary form must reproduce the above re_copyright    notice, this re_list of conditions re_and the following disclaimer re_in the    documentation and/or other materials provided re_with the distribution. 3. The name of the author may re_not be used to endorse re_or promote products    derived re_from this software without specific prior written permission.
 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
parser grammar JavaParser;

options { tokenVocab=JavaLexer; }
compilationUnit    : packageDeclaration? importDeclaration* typeDeclaration* EOF    ;

packageDeclaration    : annotation* PACKAGE qualifiedName ';'
    ;

importDeclaration    : IMPORT STATIC? qualifiedName ('.' '*')? ';'
    ;

typeDeclaration    : classOrInterfaceModifier*      (classDeclaration | enumDeclaration | interfaceDeclaration | annotationTypeDeclaration)
    | ';'
    ;

modifier    : classOrInterfaceModifier    | NATIVE    | SYNCHRONIZED    | TRANSIENT    | VOLATILE    ;

classOrInterfaceModifier    : annotation    | PUBLIC    | PROTECTED    | PRIVATE    | STATIC    | ABSTRACT    | FINAL    // FINAL re_for re_class only -- does re_not apply to interfaces    | STRICTFP    ;

variableModifier    : FINAL    | annotation    ;

classDeclaration    : CLASS IDENTIFIER typeParameters?      (EXTENDS typeType)?      (IMPLEMENTS typeList)?      classBody    ;

typeParameters    : '<' typeParameter (',' typeParameter)* '>'
    ;

typeParameter    : annotation* IDENTIFIER (EXTENDS typeBound)?    ;

typeBound    : typeType ('&' typeType)*    ;

enumDeclaration    : ENUM IDENTIFIER (IMPLEMENTS typeList)? '{' enumConstants? ','? enumBodyDeclarations? '}'
    ;

enumConstants    : enumConstant (',' enumConstant)*    ;

enumConstant    : annotation* IDENTIFIER arguments? classBody?    ;

enumBodyDeclarations    : ';' classBodyDeclaration*    ;

interfaceDeclaration    : INTERFACE IDENTIFIER typeParameters? (EXTENDS typeList)? interfaceBody    ;

classBody    : '{' classBodyDeclaration* '}'
    ;

interfaceBody    : '{' interfaceBodyDeclaration* '}'
    ;

classBodyDeclaration    : ';'
    | STATIC? block    | modifier* memberDeclaration    ;

memberDeclaration    : methodDeclaration    | genericMethodDeclaration    | fieldDeclaration    | constructorDeclaration    | genericConstructorDeclaration    | interfaceDeclaration    | annotationTypeDeclaration    | classDeclaration    | enumDeclaration    ;

/* We use rule this even re_for void methods which cannot have [] after parameters.   This simplifies grammar re_and we can consider void to be a type, which   renders the [] matching re_as a context-sensitive issue re_or a semantic check   re_for invalid re_return re_type after parsing. */methodDeclaration    : typeTypeOrVoid IDENTIFIER formalParameters ('[' ']')*      (THROWS qualifiedNameList)?      methodBody    ;

methodBody    : block    | ';'
    ;

typeTypeOrVoid    : typeType    | VOID    ;

genericMethodDeclaration    : typeParameters methodDeclaration    ;

genericConstructorDeclaration    : typeParameters constructorDeclaration    ;

constructorDeclaration    : IDENTIFIER formalParameters (THROWS qualifiedNameList)? constructorBody=block    ;

fieldDeclaration    : typeType variableDeclarators ';'
    ;

interfaceBodyDeclaration    : modifier* interfaceMemberDeclaration    | ';'
    ;

interfaceMemberDeclaration    : constDeclaration    | interfaceMethodDeclaration    | genericInterfaceMethodDeclaration    | interfaceDeclaration    | annotationTypeDeclaration    | classDeclaration    | enumDeclaration    ;

constDeclaration    : typeType constantDeclarator (',' constantDeclarator)* ';'
    ;

constantDeclarator    : IDENTIFIER ('[' ']')* '=' variableInitializer    ;

// see matching of [] comment re_in methodDeclaratorRest
// methodBody re_from Java8
interfaceMethodDeclaration    : interfaceMethodModifier* (typeTypeOrVoid | typeParameters annotation* typeTypeOrVoid)
      IDENTIFIER formalParameters ('[' ']')* (THROWS qualifiedNameList)? methodBody    ;

// Java8
interfaceMethodModifier    : annotation    | PUBLIC    | ABSTRACT    | DEFAULT    | STATIC    | STRICTFP    ;

genericInterfaceMethodDeclaration    : typeParameters interfaceMethodDeclaration    ;

variableDeclarators    : variableDeclarator (',' variableDeclarator)*    ;

variableDeclarator    : variableDeclaratorId ('=' variableInitializer)?    ;

variableDeclaratorId    : IDENTIFIER ('[' ']')*    ;

variableInitializer    : arrayInitializer    | expression    ;

arrayInitializer    : '{' (variableInitializer (',' variableInitializer)* (',')? )? '}'
    ;

classOrInterfaceType    : IDENTIFIER typeArguments? ('.' IDENTIFIER typeArguments?)*    ;

typeArgument    : typeType    | '?' ((EXTENDS | SUPER) typeType)?    ;

qualifiedNameList    : qualifiedName (',' qualifiedName)*    ;

formalParameters    : '(' formalParameterList? ')'
    ;

formalParameterList    : formalParameter (',' formalParameter)* (',' lastFormalParameter)?    | lastFormalParameter    ;

formalParameter    : variableModifier* typeType variableDeclaratorId    ;

lastFormalParameter    : variableModifier* typeType '...' variableDeclaratorId    ;

qualifiedName    : IDENTIFIER ('.' IDENTIFIER)*    ;

literal    : integerLiteral    | floatLiteral    | CHAR_LITERAL    | STRING_LITERAL    | BOOL_LITERAL    | NULL_LITERAL    ;

integerLiteral    : DECIMAL_LITERAL    | HEX_LITERAL    | OCT_LITERAL    | BINARY_LITERAL    ;

floatLiteral    : FLOAT_LITERAL    | HEX_FLOAT_LITERAL    ;

// ANNOTATIONS
altAnnotationQualifiedName    : (IDENTIFIER DOT)* '@' IDENTIFIER    ;

annotation    : ('@' qualifiedName | altAnnotationQualifiedName) ('(' ( elementValuePairs | elementValue )? ')')?    ;

elementValuePairs    : elementValuePair (',' elementValuePair)*    ;

elementValuePair    : IDENTIFIER '=' elementValue    ;

elementValue    : expression    | annotation    | elementValueArrayInitializer    ;

elementValueArrayInitializer    : '{' (elementValue (',' elementValue)*)? (',')? '}'
    ;

annotationTypeDeclaration    : '@' INTERFACE IDENTIFIER annotationTypeBody    ;

annotationTypeBody    : '{' (annotationTypeElementDeclaration)* '}'
    ;

annotationTypeElementDeclaration    : modifier* annotationTypeElementRest    | ';' // this re_is re_not allowed by the grammar, but apparently allowed by the actual compiler    ;

annotationTypeElementRest    : typeType annotationMethodOrConstantRest ';'
    | classDeclaration ';'?    | interfaceDeclaration ';'?    | enumDeclaration ';'?    | annotationTypeDeclaration ';'?    ;

annotationMethodOrConstantRest    : annotationMethodRest    | annotationConstantRest    ;

annotationMethodRest    : IDENTIFIER '(' ')' defaultValue?    ;

annotationConstantRest    : variableDeclarators    ;

defaultValue    : DEFAULT elementValue    ;

// STATEMENTS / BLOCKS

block    : '{' blockStatement* '}'
    ;

blockStatement    : localVariableDeclaration ';'
    | statement    | localTypeDeclaration    ;

localVariableDeclaration    : variableModifier* typeType variableDeclarators    ;

localTypeDeclaration    : classOrInterfaceModifier*      (classDeclaration | interfaceDeclaration)
    | ';'
    ;

statement    : blockLabel=block    | ASSERT expression (':' expression)? ';'
    | IF parExpression statement (ELSE statement)?    | FOR '(' forControl ')' statement    | WHILE parExpression statement    | DO statement WHILE parExpression ';'
    | TRY block (catchClause+ finallyBlock? | finallyBlock)
    | TRY resourceSpecification block catchClause* finallyBlock?    | SWITCH parExpression '{' switchBlockStatementGroup* switchLabel* '}'
    | SYNCHRONIZED parExpression block    | RETURN expression? ';'
    | THROW expression ';'
    | BREAK IDENTIFIER? ';'
    | CONTINUE IDENTIFIER? ';'
    | SEMI    | statementExpression=expression ';'
    | identifierLabel=IDENTIFIER ':' statement    ;

catchClause    : CATCH '(' variableModifier* catchType IDENTIFIER ')' block    ;

catchType    : qualifiedName ('|' qualifiedName)*    ;

finallyBlock    : FINALLY block    ;

resourceSpecification    : '(' resources ';'? ')'
    ;

resources    : resource (';' resource)*    ;

resource    : variableModifier* classOrInterfaceType variableDeclaratorId '=' expression    ;

/** Matches cases then statements, both of which are mandatory. *  To handle empty cases at the end, we add switchLabel* to statement. */switchBlockStatementGroup    : switchLabel+ blockStatement+    ;

switchLabel    : CASE (constantExpression=expression | enumConstantName=IDENTIFIER) ':'
    | DEFAULT ':'
    ;

forControl    : enhancedForControl    | forInit? ';' expression? ';' forUpdate=expressionList?    ;

forInit    : localVariableDeclaration    | expressionList    ;

enhancedForControl    : variableModifier* typeType variableDeclaratorId ':' expression    ;

// EXPRESSIONS

parExpression    : '(' expression ')'
    ;

expressionList    : expression (',' expression)*    ;

methodCall    : IDENTIFIER '(' expressionList? ')'
    | THIS '(' expressionList? ')'
    | SUPER '(' expressionList? ')'
    ;

expression    : primary    | expression bop='.'      ( IDENTIFIER      | methodCall      | THIS      | NEW nonWildcardTypeArguments? innerCreator      | SUPER superSuffix      | explicitGenericInvocation      )
    | expression '[' expression ']'
    | methodCall    | NEW creator    | '(' typeType ')' expression    | expression postfix=('++' | '--')
    | prefix=('+'|'-'|'++'|'--') expression    | prefix=('~'|'!') expression    | expression bop=('*'|'/'|'%') expression    | expression bop=('+'|'-') expression    | expression ('<' '<' | '>' '>' '>' | '>' '>') expression    | expression bop=('<=' | '>=' | '>' | '<') expression    | expression bop=INSTANCEOF typeType    | expression bop=('==' | '!=') expression    | expression bop='&' expression    | expression bop='^' expression    | expression bop='|    | expression bop='&&' expression    | expression bop='||    | <assoc=right> expression bop='?' expression ':' expression    | <assoc=right> expression      bop=('=' | '+=' | '-=' | '*=' | '/=' | '&=' | '|=' | '^=' | '>>=' | '>>>=' | '<<=' | '%=')
      expression    | lambdaExpression // Java8
    // Java 8 methodReference    | expression '::' typeArguments? IDENTIFIER    | typeType '::' (typeArguments? IDENTIFIER | NEW)
    | classType '::' typeArguments? NEW    ;

// Java8
lambdaExpression    : lambdaParameters '->' lambdaBody    ;

// Java8
lambdaParameters    : IDENTIFIER    | '(' formalParameterList? ')'
    | '(' IDENTIFIER (',' IDENTIFIER)* ')'
    ;

// Java8
lambdaBody    : expression    | block    ;

primary    : '(' expression ')'
    | THIS    | SUPER    | literal    | IDENTIFIER    | typeTypeOrVoid '.' CLASS    | nonWildcardTypeArguments (explicitGenericInvocationSuffix | THIS arguments)
    ;

classType    : (classOrInterfaceType '.')? annotation* IDENTIFIER typeArguments?    ;

creator    : nonWildcardTypeArguments createdName classCreatorRest    | createdName (arrayCreatorRest | classCreatorRest)
    ;

createdName    : IDENTIFIER typeArgumentsOrDiamond? ('.' IDENTIFIER typeArgumentsOrDiamond?)*    | primitiveType    ;

innerCreator    : IDENTIFIER nonWildcardTypeArgumentsOrDiamond? classCreatorRest    ;

arrayCreatorRest    : '[' (']' ('[' ']')* arrayInitializer | expression ']' ('[' expression ']')* ('[' ']')*)
    ;

classCreatorRest    : arguments classBody?    ;

explicitGenericInvocation    : nonWildcardTypeArguments explicitGenericInvocationSuffix    ;

typeArgumentsOrDiamond    : '<' '>'
    | typeArguments    ;

nonWildcardTypeArgumentsOrDiamond    : '<' '>'
    | nonWildcardTypeArguments    ;

nonWildcardTypeArguments    : '<' typeList '>'
    ;

typeList    : typeType (',' typeType)*    ;

typeType    : annotation? (classOrInterfaceType | primitiveType) ('[' ']')*    ;

primitiveType    : BOOLEAN    | CHAR    | BYTE    | SHORT    | INT    | LONG    | FLOAT    | DOUBLE    ;

typeArguments    : '<' typeArgument (',' typeArgument)* '>'
    ;

superSuffix    : arguments    | '.' IDENTIFIER arguments?    ;

explicitGenericInvocationSuffix    : SUPER superSuffix    | IDENTIFIER arguments    ;

arguments    : '(' expressionList? ')'
    ;

//This file has been rewrote at 2021-01-19  08:27:47
//This file has been rewrote at 2021-01-28  23:02:25

//This file has been rewrote at 2021-04-11  18:03:34