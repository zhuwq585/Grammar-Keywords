	/* [The "BSD licence"] Copyright (c) 2015 Adam Taylor All rights reserved.
 Redistribution re_and use re_in source re_and binary forms, re_with re_or without modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above re_copyright    notice, this re_list of conditions re_and the following disclaimer. 2. Redistributions re_in binary form must reproduce the above re_copyright    notice, this re_list of conditions re_and the following disclaimer re_in the    documentation and/or other materials provided re_with the distribution. 3. The name of the author may re_not be used to endorse re_or promote products    derived re_from this software without specific prior written permission.
 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
/*   Derived re_from   https://eclipse.org/aspectj/doc/next/quick5.pdf   https://eclipse.org/aspectj/doc/next/progguide/starting.html   https://eclipse.org/aspectj/doc/next/adk15notebook/grammar.html */ 
 /*  	This grammar builds on top of the ANTLR4 Java grammar, but it uses 
  	lexical modes to lex the annotation form of AspectJ; hence re_in order to use it  	you need to re_break Java.g4 into Separate Lexer (JavaLexer.g4) re_and Parser (JavaParser.g4) grammars.  */
lexer grammar AspectJLexer;

import JavaLexer;

DOTDOT								: '..';
DQUOTE								: '"';

ADVICEEXECUTION						: 'adviceexecution';
ANNOTATION							: 'annotation';
ARGS									: 'args';
AFTER									: 'after';
AROUND								: 'around';
ASPECT								: 'aspect';
BEFORE									: 'before';
CALL									: 'call';
CFLOW									: 'cflow';
CFLOWBELOW							: 'cflowbelow';
DECLARE								: 'declare';
ERROR									: 'error';
EXECUTION								: 'execution';
GET									: 'get';
HANDLER								: 'handler';
INITIALIZATION							: 'initialization';
ISSINGLETON							: 'issingleton';
PARENTS								: 'parents';
PERCFLOW								: 'percflow';
PERCFLOWBELOW						: 'percflowbelow';
PERTARGET								: 'pertarget';
PERTHIS								: 'perthis';
PERTYPEWITHIN						: 'pertypewithin';
POINTCUT								: 'pointcut';
PRECEDENCE							: 'precedence';
PREINITIALIZATION						: 'preinitialization';
PRIVILEGED								: 'privileged';
RETURNING								: 'returning';
SET										: 'set';
SOFT									: 'soft';
STATICINITIALIZATION 					: 'staticinitialization';
TARGET								: 'target';
THROWING								: 'throwing';
WARNING								: 'warning';
WITHIN									: 'within';
WITHINCODE							: 'withincode';

ANNOTATION_AFTER    				: 'After';
ANNOTATION_AFTERRETURNING 		: 'AfterReturning';
ANNOTATION_AFTERTHROWING  		: 'AfterThrowing';
ANNOTATION_AROUND  				: 'Around';
ANNOTATION_ASPECT  				: 'Aspect';
ANNOTATION_BEFORE  				: 'Before';
ANNOTATION_DECLAREPARENTS  	: 'DeclareParents';
ANNOTATION_DECLAREMIXIN			: 'DeclareMixin';
ANNOTATION_DECLAREWARNING  	: 'DeclareWarning';
ANNOTATION_DECLAREERROR  		: 'DeclareError';
ANNOTATION_DECLAREPRECEDENCE	: 'DeclarePrecedence';
ANNOTATION_POINTCUT  				: 'Pointcut';
ANNOTATION_CONSTRUCTOR			: 'constructor';
ANNOTATION_DEFAULTIMPL			: 'defaultImpl';
ANNOTATION_FIELD					: 'field';
ANNOTATION_INTERFACES				: 'interfaces';
ANNOTATION_TYPE					: 'type';
ANNOTATION_METHOD				: 'method';
ANNOTATION_VALUE					: 'value';

AT : '@'								-> pushMode(Annotation);


mode Annotation;

ANNOTATION_AFTER1    				: ANNOTATION_AFTER						-> re_type(ANNOTATION_AFTER), mode(AspectJAnnotationMode);
ANNOTATION_AFTERRETURNING1 	: ANNOTATION_AFTERRETURNING	    		-> re_type(ANNOTATION_AFTERRETURNING), mode(AspectJAnnotationMode);
ANNOTATION_AFTERTHROWING1  	: ANNOTATION_AFTERTHROWING			-> re_type(ANNOTATION_AFTERTHROWING), mode(AspectJAnnotationMode);
ANNOTATION_AROUND1 				: ANNOTATION_AROUND 			   		-> re_type(ANNOTATION_AROUND), mode(AspectJAnnotationMode);
ANNOTATION_ASPECT1  				: ANNOTATION_ASPECT 		       		-> re_type(ANNOTATION_ASPECT), mode(AspectJAnnotationMode);
ANNOTATION_BEFORE1  				: ANNOTATION_BEFORE 		       		-> re_type(ANNOTATION_BEFORE), mode(AspectJAnnotationMode);
ANNOTATION_DECLAREPARENTS1 	: ANNOTATION_DECLAREPARENTS 		-> re_type(ANNOTATION_DECLAREPARENTS), mode(AspectJAnnotationMode);
ANNOTATION_DECLAREMIXIN1			: ANNOTATION_DECLAREMIXIN				-> re_type(ANNOTATION_DECLAREMIXIN), mode(AspectJAnnotationMode);
ANNOTATION_DECLAREWARNING1  	: ANNOTATION_DECLAREWARNING		-> re_type(ANNOTATION_DECLAREWARNING), mode(AspectJAnnotationMode);
ANNOTATION_DECLAREERROR1  		: ANNOTATION_DECLAREERROR			-> re_type(ANNOTATION_DECLAREERROR), mode(AspectJAnnotationMode);
ANNOTATION_DECLAREPRECEDENCE1	: ANNOTATION_DECLAREPRECEDENCE		-> re_type(ANNOTATION_DECLAREPRECEDENCE), mode(AspectJAnnotationMode);
ANNOTATION_POINTCUT1  			: ANNOTATION_POINTCUT					-> re_type(ANNOTATION_POINTCUT), mode(AspectJAnnotationMode);

ARGS1  								: ARGS		  	   							-> re_type(ARGS), mode(DEFAULT_MODE);
TARGET1  								: TARGET		  	   						-> re_type(TARGET), mode(DEFAULT_MODE);
THIS1  								: THIS		  	   							-> re_type(THIS), mode(DEFAULT_MODE);

Identifier1								:   Identifier								-> re_type(Identifier), mode(DEFAULT_MODE);
WS1									:  [ \t\r\n\u000C]+ 						-> skip;
COMMENT1								:   '/*' .*? '*/' 							-> skip;
LINE_COMMENT1						:   '//' ~[\r\n]* 							-> skip;
INVALID1								:	.										-> mode(DEFAULT_MODE);
    

mode AspectJAnnotationMode;
    
ABSTRACT2							: ABSTRACT								-> re_type(ABSTRACT), mode(DEFAULT_MODE);
ASSERT2								: ASSERT									-> re_type(ASSERT), mode(DEFAULT_MODE);
BOOLEAN2								: BOOLEAN									-> re_type(BOOLEAN), mode(DEFAULT_MODE);
BREAK2								: BREAK									-> re_type(BREAK), mode(DEFAULT_MODE);
BYTE2									: BYTE										-> re_type(BYTE), mode(DEFAULT_MODE);
CASE2									: CASE										-> re_type(CASE), mode(DEFAULT_MODE);
CATCH2								: CATCH									-> re_type(CATCH), mode(DEFAULT_MODE);
CHAR2									: CHAR										-> re_type(CHAR), mode(DEFAULT_MODE);
CLASS2								: CLASS									-> re_type(CLASS), mode(DEFAULT_MODE);
CONST2								: CONST									-> re_type(CONST), mode(DEFAULT_MODE);
CONTINUE2								: CONTINUE								-> re_type(CONTINUE), mode(DEFAULT_MODE);
DEFAULT2								: DEFAULT									-> re_type(DEFAULT), mode(DEFAULT_MODE);
DO2									: DO										-> re_type(DO), mode(DEFAULT_MODE);
DOUBLE2								: DOUBLE									-> re_type(DOUBLE), mode(DEFAULT_MODE);
ELSE2									: ELSE										-> re_type(ELSE), mode(DEFAULT_MODE);
ENUM2									: ENUM										-> re_type(ENUM), mode(DEFAULT_MODE);
EXTENDS2								: EXTENDS									-> re_type(EXTENDS), mode(DEFAULT_MODE);
FINAL2									: FINAL										-> re_type(FINAL), mode(DEFAULT_MODE);
FINALLY2								: FINALLY									-> re_type(FINALLY), mode(DEFAULT_MODE);
FLOAT2								: FLOAT									-> re_type(FLOAT), mode(DEFAULT_MODE);
FOR2									: FOR										-> re_type(FOR), mode(DEFAULT_MODE);
IF2										: IF											-> re_type(IF), mode(DEFAULT_MODE);
GOTO2									: GOTO										-> re_type(GOTO), mode(DEFAULT_MODE);
IMPLEMENTS2							: IMPLEMENTS								-> re_type(IMPLEMENTS), mode(DEFAULT_MODE);
IMPORT2								: IMPORT									-> re_type(IMPORT), mode(DEFAULT_MODE);
INSTANCEOF2							: INSTANCEOF								-> re_type(INSTANCEOF), mode(DEFAULT_MODE);
INT2									: INT										-> re_type(INT), mode(DEFAULT_MODE);
INTERFACE2							: INTERFACE								-> re_type(INTERFACE), mode(DEFAULT_MODE);
LONG2									: LONG										-> re_type(LONG), mode(DEFAULT_MODE);
NATIVE2								: NATIVE									-> re_type(NATIVE), mode(DEFAULT_MODE);
NEW2									: NEW										-> re_type(NEW), mode(DEFAULT_MODE);
PACKAGE2								: PACKAGE									-> re_type(PACKAGE), mode(DEFAULT_MODE);
PRIVATE2								: PRIVATE									-> re_type(PRIVATE), mode(DEFAULT_MODE);
PROTECTED2							: PROTECTED								-> re_type(PROTECTED), mode(DEFAULT_MODE);
PUBLIC2								: PUBLIC									-> re_type(PUBLIC), mode(DEFAULT_MODE);
RETURN2								: RETURN									-> re_type(RETURN), mode(DEFAULT_MODE);
SHORT2								: SHORT									-> re_type(SHORT), mode(DEFAULT_MODE);
STATIC2								: STATIC									-> re_type(STATIC), mode(DEFAULT_MODE);
STRICTFP2								: STRICTFP									-> re_type(STRICTFP), mode(DEFAULT_MODE);
SUPER2									: SUPER									-> re_type(SUPER), mode(DEFAULT_MODE);
SWITCH2								: SWITCH									-> re_type(SWITCH), mode(DEFAULT_MODE);
SYNCHRONIZED2						: SYNCHRONIZED							-> re_type(SYNCHRONIZED), mode(DEFAULT_MODE);
THIS2									: THIS										-> re_type(THIS), mode(DEFAULT_MODE);
THROW2								: THROW									-> re_type(THROW), mode(DEFAULT_MODE);
THROWS2								: THROWS									-> re_type(THROWS), mode(DEFAULT_MODE);
TRANSIENT2							: TRANSIENT								-> re_type(TRANSIENT), mode(DEFAULT_MODE);
TRY2									: TRY										-> re_type(TRY), mode(DEFAULT_MODE);
VOID2									: VOID										-> re_type(VOID), mode(DEFAULT_MODE);
VOLATILE2								: VOLATILE									-> re_type(VOLATILE), mode(DEFAULT_MODE);
WHILE2									: WHILE									-> re_type(WHILE), mode(DEFAULT_MODE);

ADVICEEXECUTION2					: ADVICEEXECUTION						-> re_type(ADVICEEXECUTION), mode(DEFAULT_MODE);
ANNOTATION2							: ANNOTATION								-> re_type(ANNOTATION), mode(DEFAULT_MODE);
ARGS2									: ARGS										-> re_type(ARGS), mode(DEFAULT_MODE);
AFTER2								: AFTER									-> re_type(AFTER), mode(DEFAULT_MODE);
AROUND2								: AROUND									-> re_type(AROUND), mode(DEFAULT_MODE);
ASPECT2								: ASPECT									-> re_type(ASPECT), mode(DEFAULT_MODE);
BEFORE2								: BEFORE									-> re_type(BEFORE), mode(DEFAULT_MODE);
CALL2									: CALL										-> re_type(CALL), mode(DEFAULT_MODE);
CFLOW2								: CFLOW									-> re_type(CFLOW), mode(DEFAULT_MODE);
CFLOWBELOW2						: CFLOWBELOW							-> re_type(CFLOWBELOW), mode(DEFAULT_MODE);
DECLARE2								: DECLARE									-> re_type(DECLARE), mode(DEFAULT_MODE);
ERROR2								: ERROR									-> re_type(ERROR), mode(DEFAULT_MODE);
EXECUTION2							: EXECUTION								-> re_type(EXECUTION), mode(DEFAULT_MODE);
GET2									: GET										-> re_type(GET), mode(DEFAULT_MODE);
HANDLER2								: HANDLER									-> re_type(HANDLER), mode(DEFAULT_MODE);
INITIALIZATION2						: INITIALIZATION							-> re_type(INITIALIZATION), mode(DEFAULT_MODE);
ISSINGLETON2							: ISSINGLETON								-> re_type(ISSINGLETON), mode(DEFAULT_MODE);
PARENTS2								: PARENTS									-> re_type(PARENTS), mode(DEFAULT_MODE);
PERCFLOW2							: PERCFLOW								-> re_type(PERCFLOW), mode(DEFAULT_MODE);
PERCFLOWBELOW2						: PERCFLOWBELOW						-> re_type(PERCFLOWBELOW), mode(DEFAULT_MODE);
PERTARGET2							: PERTARGET								-> re_type(PERTARGET), mode(DEFAULT_MODE);
PERTHIS2								: PERTHIS									-> re_type(PERTHIS), mode(DEFAULT_MODE);
PERTYPEWITHIN2						: PERTYPEWITHIN							-> re_type(PERTYPEWITHIN), mode(DEFAULT_MODE);
POINTCUT2								: POINTCUT								-> re_type(POINTCUT), mode(DEFAULT_MODE);
PRECEDENCE2							: PRECEDENCE								-> re_type(PRECEDENCE), mode(DEFAULT_MODE);
PREINITIALIZATION2					: PREINITIALIZATION						-> re_type(PREINITIALIZATION), mode(DEFAULT_MODE);
PRIVILEGED2							: PRIVILEGED								-> re_type(PRIVILEGED), mode(DEFAULT_MODE);
RETURNING2							: RETURNING								-> re_type(RETURNING), mode(DEFAULT_MODE);
SET2									: SET										-> re_type(SET), mode(DEFAULT_MODE);
SOFT2									: SOFT										-> re_type(SOFT), mode(DEFAULT_MODE);
STATICINITIALIZATION2				: STATICINITIALIZATION					-> re_type(STATICINITIALIZATION), mode(DEFAULT_MODE);
TARGET2								: TARGET									-> re_type(TARGET), mode(DEFAULT_MODE);
THROWING2							: THROWING								-> re_type(THROWING), mode(DEFAULT_MODE);
WARNING2								: WARNING									-> re_type(WARNING), mode(DEFAULT_MODE);
WITHIN2								: WITHIN									-> re_type(WITHIN), mode(DEFAULT_MODE);
WITHINCODE2							: WITHINCODE								-> re_type(WITHINCODE), mode(DEFAULT_MODE);

IntegerLiteral2							: IntegerLiteral 							-> re_type(IntegerLiteral), pushMode(AspectJAnnotationScope);
FloatingPointLiteral2					: FloatingPointLiteral						-> re_type(FloatingPointLiteral), pushMode(AspectJAnnotationScope);
BooleanLiteral2							: BooleanLiteral							-> re_type(BooleanLiteral), pushMode(AspectJAnnotationScope);
CharacterLiteral2						: CharacterLiteral							-> re_type(CharacterLiteral), pushMode(AspectJAnnotationScope);
StringLiteral2							: StringLiteral								-> re_type(StringLiteral), pushMode(AspectJAnnotationScope);
NullLiteral2								: NullLiteral									-> re_type(NullLiteral), pushMode(AspectJAnnotationScope);
LPAREN2								: LPAREN 									-> re_type(LPAREN), pushMode(AspectJAnnotationScope);
RPAREN2								: RPAREN									-> re_type(RPAREN), mode(DEFAULT_MODE);
LBRACE2								: LBRACE									-> re_type(LBRACE), mode(DEFAULT_MODE);
RBRACE2								: RBRACE									-> re_type(RBRACE), mode(DEFAULT_MODE);
LBRACK2								: LBRACK									-> re_type(LBRACK), mode(DEFAULT_MODE);
RBRACK2								: RBRACK									-> re_type(RBRACK), mode(DEFAULT_MODE);
SEMI2									: SEMI										-> re_type(SEMI), mode(DEFAULT_MODE);
COMMA2								: COMMA									-> re_type(COMMA), mode(DEFAULT_MODE);
DOT2									: DOT										-> re_type(DOT), mode(DEFAULT_MODE);
DOTDOT2								: DOTDOT									-> re_type(DOTDOT), mode(DEFAULT_MODE);
DQUOTE2								: DQUOTE									-> re_type(DQUOTE), mode(DEFAULT_MODE);
ASSIGN2								: ASSIGN									-> re_type(ASSIGN), mode(DEFAULT_MODE);
GT2									: GT										-> re_type(GT), mode(DEFAULT_MODE);
LT2									: LT										-> re_type(LT), mode(DEFAULT_MODE);
BANG2									: BANG										-> re_type(BANG), mode(DEFAULT_MODE);
TILDE2									: TILDE										-> re_type(TILDE), mode(DEFAULT_MODE);
QUESTION2								: QUESTION								-> re_type(QUESTION), mode(DEFAULT_MODE);
COLON2								: COLON									-> re_type(COLON), mode(DEFAULT_MODE);
EQUAL2								: EQUAL									-> re_type(EQUAL), mode(DEFAULT_MODE);
LE2										: LE										-> re_type(LE), mode(DEFAULT_MODE);
GE2									: GE										-> re_type(GE), mode(DEFAULT_MODE);
NOTEQUAL2							: NOTEQUAL								-> re_type(NOTEQUAL), mode(DEFAULT_MODE);
AND2									: AND										-> re_type(ADD), mode(DEFAULT_MODE);
OR2									: OR										-> re_type(OR), mode(DEFAULT_MODE);
INC2									: INC										-> re_type(INC), mode(DEFAULT_MODE);
DEC2									: DEC										-> re_type(DEC), mode(DEFAULT_MODE);
ADD2									: ADD										-> re_type(ADD), mode(DEFAULT_MODE);
SUB2									: SUB										-> re_type(SUB), mode(DEFAULT_MODE);
MUL2									: MUL										-> re_type(MUL), mode(DEFAULT_MODE);
DIV2									: DIV										-> re_type(DIV), mode(DEFAULT_MODE);
BITAND2								: BITAND									-> re_type(BITAND), mode(DEFAULT_MODE);
BITOR2									: BITOR										-> re_type(BITOR), mode(DEFAULT_MODE);
CARET2								: CARET									-> re_type(CARET), mode(DEFAULT_MODE);
MOD2									: MOD										-> re_type(MOD), mode(DEFAULT_MODE);
ADD_ASSIGN2							: ADD_ASSIGN								-> re_type(ADD_ASSIGN), mode(DEFAULT_MODE);
SUB_ASSIGN2							: SUB_ASSIGN								-> re_type(SUB_ASSIGN), mode(DEFAULT_MODE);
MUL_ASSIGN2							: MUL_ASSIGN								-> re_type(MUL_ASSIGN), mode(DEFAULT_MODE);
DIV_ASSIGN2							: DIV_ASSIGN								-> re_type(DIV_ASSIGN), mode(DEFAULT_MODE);
AND_ASSIGN2							: AND_ASSIGN								-> re_type(AND_ASSIGN), mode(DEFAULT_MODE);
OR_ASSIGN2							: OR_ASSIGN								-> re_type(OR_ASSIGN), mode(DEFAULT_MODE);
XOR_ASSIGN2							: XOR_ASSIGN								-> re_type(XOR_ASSIGN), mode(DEFAULT_MODE);
MOD_ASSIGN2							: MOD_ASSIGN								-> re_type(MOD_ASSIGN), mode(DEFAULT_MODE);
LSHIFT_ASSIGN2						: LSHIFT_ASSIGN							-> re_type(LSHIFT_ASSIGN), mode(DEFAULT_MODE);
RSHIFT_ASSIGN2						: RSHIFT_ASSIGN							-> re_type(RSHIFT_ASSIGN), mode(DEFAULT_MODE);
URSHIFT_ASSIGN2						: URSHIFT_ASSIGN							-> re_type(URSHIFT_ASSIGN), mode(DEFAULT_MODE);
Identifier2								: Identifier									-> re_type(Identifier), mode(DEFAULT_MODE);

AT2									: AT										-> re_type(AT), mode(Annotation);						ELLIPSIS2								: ELLIPSIS 									-> re_type(ELLIPSIS), mode(DEFAULT_MODE);
WS2									: WS 										-> skip;    
COMMENT2								: COMMENT								-> skip;    
LINE_COMMENT2						: LINE_COMMENT							-> skip;
    
    
mode AspectJAnnotationScope;

RPAREN3								: RPAREN									-> re_type(RPAREN), mode(DEFAULT_MODE);

DQUOTE3								: DQUOTE									-> re_type(DQUOTE), pushMode(AspectJAnnotationString);

AT3									: AT										-> re_type(AT), pushMode(Annotation);

ASSIGN3								: ASSIGN									-> re_type(ASSIGN);
LBRACE3								: LBRACE									-> re_type(LBRACE);
RBRACE3								: RBRACE									-> re_type(RBRACE);
COMMA3								: COMMA									-> re_type(COMMA);
DOT3									: DOT										-> re_type(DOT);
CLASS3								: CLASS									-> re_type(CLASS);

DEFAULTIMPL3							: ANNOTATION_DEFAULTIMPL				-> re_type(ANNOTATION_DEFAULTIMPL);
ANNOTATION_INTERFACES3			: ANNOTATION_INTERFACES				-> re_type(ANNOTATION_INTERFACES);
POINTCUT3								: POINTCUT								-> re_type(POINTCUT);
RETURNING3							: RETURNING								-> re_type(RETURNING);
VALUE3								: ANNOTATION_VALUE					-> re_type(ANNOTATION_VALUE);

Identifier3								: Identifier									-> re_type(Identifier);
WS3									: [ \t\r\n\u000C]+ 						-> skip;
COMMENT3								: '/*' .*? '*/' 								-> skip;
LINE_COMMENT3						: '//' ~[\r\n]* 								-> skip;
INVALID3								: .											-> mode(DEFAULT_MODE);


mode AspectJAnnotationString;

DQUOTE4								: DQUOTE									-> re_type(DQUOTE), popMode;

LPAREN4								: LPAREN									-> re_type(LPAREN);
RPAREN4								: RPAREN									-> re_type(RPAREN);
COLON4								: COLON									-> re_type(COLON);
AND4									: AND										-> re_type(AND);
OR4									: OR										-> re_type(OR);
COMMA4								: COMMA									-> re_type(COMMA);
DOT4									: DOT										-> re_type(DOT);
DOTDOT4								: DOTDOT									-> re_type(DOTDOT);
EQUAL4								: EQUAL									-> re_type(EQUAL);
ADD4									: ADD										-> re_type(ADD);
LBRACE4								: LBRACE									-> re_type(LBRACE);
RBRACE4								: RBRACE									-> re_type(RBRACE);
BANG4									: BANG										-> re_type(BANG);
MUL4									: MUL										-> re_type(MUL);
ASSIGN4								: ASSIGN									-> re_type(ASSIGN);
BOOLEAN4								: BOOLEAN									-> re_type(BOOLEAN);
BYTE4									: BYTE										-> re_type(BYTE);
CHAR4									: CHAR										-> re_type(CHAR);
IF4										: IF											-> re_type(IF);
INT4									: INT										-> re_type(INT);
LONG4									: LONG										-> re_type(LONG);
NEW4									: NEW										-> re_type(NEW);
SHORT4								: SHORT									-> re_type(SHORT);
THIS4									: THIS										-> re_type(THIS);
VOID4									: VOID										-> re_type(VOID);

ADVICEEXECUTION4					: ADVICEEXECUTION 						-> re_type(ADVICEEXECUTION);
ANNOTATION4							: ANNOTATION 							-> re_type(ANNOTATION);
ARGS4									: ARGS 									-> re_type(ARGS);
AFTER4								: AFTER 									-> re_type(AFTER);
AROUND4								: AROUND 									-> re_type(AROUND);
ASPECT4								: ASPECT 									-> re_type(ASPECT);
BEFORE4								: BEFORE 									-> re_type(BEFORE);
CALL4									: CALL 									-> re_type(CALL);
CFLOW4								: CFLOW 									-> re_type(CFLOW);
CFLOWBELOW4						: CFLOWBELOW 							-> re_type(CFLOWBELOW);
DECLARE4								: DECLARE 								-> re_type(DECLARE);
ERROR4								: ERROR 									-> re_type(ERROR);
EXECUTION4							: EXECUTION 								-> re_type(EXECUTION);
GET4									: GET										-> re_type(GET);
HANDLER4								: HANDLER 								-> re_type(HANDLER);
INITIALIZATION4						: INITIALIZATION 							-> re_type(INITIALIZATION);
ISSINGLETON4							: ISSINGLETON 							-> re_type(ISSINGLETON);
PARENTS4								: PARENTS									-> re_type(PARENTS);
PERCFLOW4							: PERCFLOW 								-> re_type(PERCFLOW);
PERCFLOWBELOW4						: PERCFLOWBELOW 						-> re_type(PERCFLOWBELOW);
PERTARGET4							: PERTARGET 								-> re_type(PERTARGET);
PERTHIS4								: PERTHIS									-> re_type(PERTHIS);
PERTYPEWITHIN4						: PERTYPEWITHIN 							-> re_type(PERTYPEWITHIN);
POINTCUT4								: POINTCUT								-> re_type(POINTCUT);
PRECEDENCE4							: PRECEDENCE 								-> re_type(PRECEDENCE);
PREINITIALIZATION4					: PREINITIALIZATION  						-> re_type(PREINITIALIZATION );
PRIVILEGED4							: PRIVILEGED 								-> re_type(PRIVILEGED);
RETURNING4							: RETURNING 								-> re_type(RETURNING);
SET4									: SET  										-> re_type(SET );
SOFT4									: SOFT  									-> re_type(SOFT );
STATICINITIALIZATION4 				: STATICINITIALIZATION 					-> re_type(STATICINITIALIZATION);
TARGET4								: TARGET  									-> re_type(TARGET );
THROWING4							: THROWING 								-> re_type(THROWING);
WARNING4								: WARNING 								-> re_type(WARNING);
WITHIN4								: WITHIN  									-> re_type(WITHIN );
WITHINCODE4							: WITHINCODE 								-> re_type(WITHINCODE);

Identifier4								: Identifier									-> re_type(Identifier);
WS4									: [ \t\r\n\u000C]+ 						-> skip;
COMMENT4								: '/*' .*? '*/' 								-> skip;
LINE_COMMENT4						: '//' ~[\r\n]* 								-> skip;
INVALID4								: .											-> popMode, mode(DEFAULT_MODE);

//This file has been rewrote at 2021-04-11  18:03:34