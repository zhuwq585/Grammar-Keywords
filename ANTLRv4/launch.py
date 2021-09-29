from antlr4 import *
from ANTLRv4Lexer import ANTLRv4Lexer 
from ANTLRv4Parser import ANTLRv4Parser
from ANTLRv4ParserListener import ANTLRv4ParserListener

class KeyPrinter(ANTLRv4ParserListener):
    def enterIdentifier(self, ctx):
        print(ctx.children[0].symbol.text)


file = 'ANTLRv4Parser.g4'
inputStream = FileStream(file, encoding='UTF-8', errors='ignore')
lexer = ANTLRv4Lexer(inputStream)
stream = CommonTokenStream(lexer)
parser = ANTLRv4Parser(stream)
astTree = parser.grammarSpec()
printer = KeyPrinter()
walker = ParseTreeWalker()
walker.walk(printer, astTree)

pass    

# if stream.tokens[?].type == 2: 
#    csda
# print