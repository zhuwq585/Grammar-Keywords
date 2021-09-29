# Generated from parsers/pascal/pascal.g4 by ANTLR 4.8
from antlr4 import *
from io import StringIO
from typing.io import TextIO
import sys



def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2R")
        buf.write("\u029f\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7")
        buf.write("\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r")
        buf.write("\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22\4\23")
        buf.write("\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30")
        buf.write("\4\31\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36")
        buf.write("\t\36\4\37\t\37\4 \t \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%")
        buf.write("\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4,\t,\4-\t-\4.")
        buf.write("\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64")
        buf.write("\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:")
        buf.write("\4;\t;\4<\t<\4=\t=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\t")
        buf.write("C\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4I\tI\4J\tJ\4K\tK\4L\t")
        buf.write("L\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\4S\tS\4T\tT\4U\t")
        buf.write("U\4V\tV\4W\tW\4X\tX\4Y\tY\4Z\tZ\4[\t[\4\\\t\\\4]\t]\4")
        buf.write("^\t^\4_\t_\4`\t`\4a\ta\4b\tb\4c\tc\4d\td\4e\te\4f\tf\4")
        buf.write("g\tg\4h\th\4i\ti\4j\tj\4k\tk\4l\tl\3\2\3\2\3\3\3\3\3\4")
        buf.write("\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3")
        buf.write("\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20")
        buf.write("\3\21\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25\3\26")
        buf.write("\3\26\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33")
        buf.write("\3\34\3\34\3\34\3\34\3\35\3\35\3\35\3\35\3\35\3\35\3\36")
        buf.write("\3\36\3\36\3\36\3\36\3\36\3\37\3\37\3\37\3\37\3\37\3\37")
        buf.write("\3\37\3\37\3 \3 \3 \3 \3 \3!\3!\3!\3!\3!\3\"\3\"\3\"\3")
        buf.write("\"\3#\3#\3#\3#\3#\3#\3$\3$\3$\3$\3%\3%\3%\3&\3&\3&\3&")
        buf.write("\3&\3&\3&\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3)\3)\3)\3)")
        buf.write("\3)\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3+\3+\3+\3,\3,\3,\3")
        buf.write(",\3,\3-\3-\3-\3.\3.\3.\3/\3/\3/\3/\3/\3/\3/\3/\3\60\3")
        buf.write("\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3\62\3\62")
        buf.write("\3\62\3\62\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\65\3\65")
        buf.write("\3\65\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\67\3\67\3\67")
        buf.write("\3\67\3\67\3\67\3\67\3\67\3\67\3\67\38\38\38\38\38\38")
        buf.write("\38\38\39\39\39\39\39\3:\3:\3:\3:\3:\3:\3:\3;\3;\3;\3")
        buf.write(";\3;\3;\3;\3<\3<\3<\3<\3=\3=\3=\3=\3=\3>\3>\3>\3?\3?\3")
        buf.write("?\3?\3?\3@\3@\3@\3@\3@\3@\3A\3A\3A\3A\3B\3B\3B\3B\3B\3")
        buf.write("B\3C\3C\3C\3C\3C\3D\3D\3E\3E\3F\3F\3G\3G\3H\3H\3H\3I\3")
        buf.write("I\3J\3J\3K\3K\3L\3L\3M\3M\3M\3N\3N\3O\3O\3O\3P\3P\3P\3")
        buf.write("Q\3Q\3R\3R\3S\3S\3T\3T\3U\3U\3U\3V\3V\3W\3W\3W\3X\3X\3")
        buf.write("Y\3Y\3Z\3Z\3[\3[\3[\3\\\3\\\3]\3]\3^\3^\3^\3^\3^\3_\3")
        buf.write("_\3_\3_\3_\3_\3_\3_\3_\3_\3`\3`\3`\3`\3`\3a\3a\3a\3a\3")
        buf.write("a\3a\3a\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3b\3")
        buf.write("c\3c\3c\3c\3c\3d\3d\3d\3d\3d\3d\3e\3e\3e\3e\3f\3f\3f\3")
        buf.write("f\7f\u0258\nf\ff\16f\u025b\13f\3f\3f\3f\3f\3f\3g\3g\7")
        buf.write("g\u0264\ng\fg\16g\u0267\13g\3g\3g\3g\3g\3h\3h\7h\u026f")
        buf.write("\nh\fh\16h\u0272\13h\3i\3i\3i\3i\7i\u0278\ni\fi\16i\u027b")
        buf.write("\13i\3i\3i\3j\6j\u0280\nj\rj\16j\u0281\3k\6k\u0285\nk")
        buf.write("\rk\16k\u0286\3k\3k\6k\u028b\nk\rk\16k\u028c\3k\5k\u0290")
        buf.write("\nk\5k\u0292\nk\3k\5k\u0295\nk\3l\3l\5l\u0299\nl\3l\6")
        buf.write("l\u029c\nl\rl\16l\u029d\4\u0259\u0265\2m\3\2\5\2\7\2\t")
        buf.write("\2\13\2\r\2\17\2\21\2\23\2\25\2\27\2\31\2\33\2\35\2\37")
        buf.write("\2!\2#\2%\2\'\2)\2+\2-\2/\2\61\2\63\2\65\2\67\39\4;\5")
        buf.write("=\6?\7A\bC\tE\nG\13I\fK\rM\16O\17Q\20S\21U\22W\23Y\24")
        buf.write("[\25]\26_\27a\30c\31e\32g\33i\34k\35m\36o\37q s!u\"w#")
        buf.write("y${%}&\177\'\u0081(\u0083)\u0085*\u0087+\u0089,\u008b")
        buf.write("-\u008d.\u008f/\u0091\60\u0093\61\u0095\62\u0097\63\u0099")
        buf.write("\64\u009b\65\u009d\66\u009f\67\u00a18\u00a39\u00a5:\u00a7")
        buf.write(";\u00a9<\u00ab=\u00ad>\u00af?\u00b1@\u00b3A\u00b5B\u00b7")
        buf.write("C\u00b9D\u00bbE\u00bdF\u00bfG\u00c1H\u00c3I\u00c5J\u00c7")
        buf.write("K\u00c9L\u00cbM\u00cdN\u00cfO\u00d1P\u00d3Q\u00d5R\u00d7")
        buf.write("\2\3\2!\4\2CCcc\4\2DDdd\4\2EEee\4\2FFff\4\2GGgg\4\2HH")
        buf.write("hh\4\2IIii\4\2JJjj\4\2KKkk\4\2LLll\4\2MMmm\4\2NNnn\4\2")
        buf.write("OOoo\4\2PPpp\4\2QQqq\4\2RRrr\4\2SSss\4\2TTtt\4\2UUuu\4")
        buf.write("\2VVvv\4\2WWww\4\2XXxx\4\2YYyy\4\2ZZzz\4\2[[{{\4\2\\\\")
        buf.write("||\5\2\13\f\17\17\"\"\4\2C\\c|\6\2\62;C\\aac|\3\2))\4")
        buf.write("\2--//\2\u0290\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2=\3")
        buf.write("\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G")
        buf.write("\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2")
        buf.write("Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2")
        buf.write("\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2c\3\2\2")
        buf.write("\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2")
        buf.write("\2\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3")
        buf.write("\2\2\2\2y\3\2\2\2\2{\3\2\2\2\2}\3\2\2\2\2\177\3\2\2\2")
        buf.write("\2\u0081\3\2\2\2\2\u0083\3\2\2\2\2\u0085\3\2\2\2\2\u0087")
        buf.write("\3\2\2\2\2\u0089\3\2\2\2\2\u008b\3\2\2\2\2\u008d\3\2\2")
        buf.write("\2\2\u008f\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2\2\2\u0095")
        buf.write("\3\2\2\2\2\u0097\3\2\2\2\2\u0099\3\2\2\2\2\u009b\3\2\2")
        buf.write("\2\2\u009d\3\2\2\2\2\u009f\3\2\2\2\2\u00a1\3\2\2\2\2\u00a3")
        buf.write("\3\2\2\2\2\u00a5\3\2\2\2\2\u00a7\3\2\2\2\2\u00a9\3\2\2")
        buf.write("\2\2\u00ab\3\2\2\2\2\u00ad\3\2\2\2\2\u00af\3\2\2\2\2\u00b1")
        buf.write("\3\2\2\2\2\u00b3\3\2\2\2\2\u00b5\3\2\2\2\2\u00b7\3\2\2")
        buf.write("\2\2\u00b9\3\2\2\2\2\u00bb\3\2\2\2\2\u00bd\3\2\2\2\2\u00bf")
        buf.write("\3\2\2\2\2\u00c1\3\2\2\2\2\u00c3\3\2\2\2\2\u00c5\3\2\2")
        buf.write("\2\2\u00c7\3\2\2\2\2\u00c9\3\2\2\2\2\u00cb\3\2\2\2\2\u00cd")
        buf.write("\3\2\2\2\2\u00cf\3\2\2\2\2\u00d1\3\2\2\2\2\u00d3\3\2\2")
        buf.write("\2\2\u00d5\3\2\2\2\3\u00d9\3\2\2\2\5\u00db\3\2\2\2\7\u00dd")
        buf.write("\3\2\2\2\t\u00df\3\2\2\2\13\u00e1\3\2\2\2\r\u00e3\3\2")
        buf.write("\2\2\17\u00e5\3\2\2\2\21\u00e7\3\2\2\2\23\u00e9\3\2\2")
        buf.write("\2\25\u00eb\3\2\2\2\27\u00ed\3\2\2\2\31\u00ef\3\2\2\2")
        buf.write("\33\u00f1\3\2\2\2\35\u00f3\3\2\2\2\37\u00f5\3\2\2\2!\u00f7")
        buf.write("\3\2\2\2#\u00f9\3\2\2\2%\u00fb\3\2\2\2\'\u00fd\3\2\2\2")
        buf.write(")\u00ff\3\2\2\2+\u0101\3\2\2\2-\u0103\3\2\2\2/\u0105\3")
        buf.write("\2\2\2\61\u0107\3\2\2\2\63\u0109\3\2\2\2\65\u010b\3\2")
        buf.write("\2\2\67\u010d\3\2\2\29\u0111\3\2\2\2;\u0117\3\2\2\2=\u011d")
        buf.write("\3\2\2\2?\u0125\3\2\2\2A\u012a\3\2\2\2C\u012f\3\2\2\2")
        buf.write("E\u0133\3\2\2\2G\u0139\3\2\2\2I\u013d\3\2\2\2K\u0140\3")
        buf.write("\2\2\2M\u0147\3\2\2\2O\u014c\3\2\2\2Q\u0150\3\2\2\2S\u0155")
        buf.write("\3\2\2\2U\u0159\3\2\2\2W\u0162\3\2\2\2Y\u0167\3\2\2\2")
        buf.write("[\u016a\3\2\2\2]\u016d\3\2\2\2_\u0175\3\2\2\2a\u017b\3")
        buf.write("\2\2\2c\u017f\3\2\2\2e\u0183\3\2\2\2g\u0187\3\2\2\2i\u018a")
        buf.write("\3\2\2\2k\u018d\3\2\2\2m\u0194\3\2\2\2o\u019e\3\2\2\2")
        buf.write("q\u01a6\3\2\2\2s\u01ab\3\2\2\2u\u01b2\3\2\2\2w\u01b9\3")
        buf.write("\2\2\2y\u01bd\3\2\2\2{\u01c2\3\2\2\2}\u01c5\3\2\2\2\177")
        buf.write("\u01ca\3\2\2\2\u0081\u01d0\3\2\2\2\u0083\u01d4\3\2\2\2")
        buf.write("\u0085\u01da\3\2\2\2\u0087\u01df\3\2\2\2\u0089\u01e1\3")
        buf.write("\2\2\2\u008b\u01e3\3\2\2\2\u008d\u01e5\3\2\2\2\u008f\u01e7")
        buf.write("\3\2\2\2\u0091\u01ea\3\2\2\2\u0093\u01ec\3\2\2\2\u0095")
        buf.write("\u01ee\3\2\2\2\u0097\u01f0\3\2\2\2\u0099\u01f2\3\2\2\2")
        buf.write("\u009b\u01f5\3\2\2\2\u009d\u01f7\3\2\2\2\u009f\u01fa\3")
        buf.write("\2\2\2\u00a1\u01fd\3\2\2\2\u00a3\u01ff\3\2\2\2\u00a5\u0201")
        buf.write("\3\2\2\2\u00a7\u0203\3\2\2\2\u00a9\u0205\3\2\2\2\u00ab")
        buf.write("\u0208\3\2\2\2\u00ad\u020a\3\2\2\2\u00af\u020d\3\2\2\2")
        buf.write("\u00b1\u020f\3\2\2\2\u00b3\u0211\3\2\2\2\u00b5\u0213\3")
        buf.write("\2\2\2\u00b7\u0216\3\2\2\2\u00b9\u0218\3\2\2\2\u00bb\u021a")
        buf.write("\3\2\2\2\u00bd\u021f\3\2\2\2\u00bf\u0229\3\2\2\2\u00c1")
        buf.write("\u022e\3\2\2\2\u00c3\u0235\3\2\2\2\u00c5\u0244\3\2\2\2")
        buf.write("\u00c7\u0249\3\2\2\2\u00c9\u024f\3\2\2\2\u00cb\u0253\3")
        buf.write("\2\2\2\u00cd\u0261\3\2\2\2\u00cf\u026c\3\2\2\2\u00d1\u0273")
        buf.write("\3\2\2\2\u00d3\u027f\3\2\2\2\u00d5\u0284\3\2\2\2\u00d7")
        buf.write("\u0296\3\2\2\2\u00d9\u00da\t\2\2\2\u00da\4\3\2\2\2\u00db")
        buf.write("\u00dc\t\3\2\2\u00dc\6\3\2\2\2\u00dd\u00de\t\4\2\2\u00de")
        buf.write("\b\3\2\2\2\u00df\u00e0\t\5\2\2\u00e0\n\3\2\2\2\u00e1\u00e2")
        buf.write("\t\6\2\2\u00e2\f\3\2\2\2\u00e3\u00e4\t\7\2\2\u00e4\16")
        buf.write("\3\2\2\2\u00e5\u00e6\t\b\2\2\u00e6\20\3\2\2\2\u00e7\u00e8")
        buf.write("\t\t\2\2\u00e8\22\3\2\2\2\u00e9\u00ea\t\n\2\2\u00ea\24")
        buf.write("\3\2\2\2\u00eb\u00ec\t\13\2\2\u00ec\26\3\2\2\2\u00ed\u00ee")
        buf.write("\t\f\2\2\u00ee\30\3\2\2\2\u00ef\u00f0\t\r\2\2\u00f0\32")
        buf.write("\3\2\2\2\u00f1\u00f2\t\16\2\2\u00f2\34\3\2\2\2\u00f3\u00f4")
        buf.write("\t\17\2\2\u00f4\36\3\2\2\2\u00f5\u00f6\t\20\2\2\u00f6")
        buf.write(" \3\2\2\2\u00f7\u00f8\t\21\2\2\u00f8\"\3\2\2\2\u00f9\u00fa")
        buf.write("\t\22\2\2\u00fa$\3\2\2\2\u00fb\u00fc\t\23\2\2\u00fc&\3")
        buf.write("\2\2\2\u00fd\u00fe\t\24\2\2\u00fe(\3\2\2\2\u00ff\u0100")
        buf.write("\t\25\2\2\u0100*\3\2\2\2\u0101\u0102\t\26\2\2\u0102,\3")
        buf.write("\2\2\2\u0103\u0104\t\27\2\2\u0104.\3\2\2\2\u0105\u0106")
        buf.write("\t\30\2\2\u0106\60\3\2\2\2\u0107\u0108\t\31\2\2\u0108")
        buf.write("\62\3\2\2\2\u0109\u010a\t\32\2\2\u010a\64\3\2\2\2\u010b")
        buf.write("\u010c\t\33\2\2\u010c\66\3\2\2\2\u010d\u010e\5\3\2\2\u010e")
        buf.write("\u010f\5\35\17\2\u010f\u0110\5\t\5\2\u01108\3\2\2\2\u0111")
        buf.write("\u0112\5\3\2\2\u0112\u0113\5%\23\2\u0113\u0114\5%\23\2")
        buf.write("\u0114\u0115\5\3\2\2\u0115\u0116\5\63\32\2\u0116:\3\2")
        buf.write("\2\2\u0117\u0118\5\5\3\2\u0118\u0119\5\13\6\2\u0119\u011a")
        buf.write("\5\17\b\2\u011a\u011b\5\23\n\2\u011b\u011c\5\35\17\2\u011c")
        buf.write("<\3\2\2\2\u011d\u011e\5\5\3\2\u011e\u011f\5\37\20\2\u011f")
        buf.write("\u0120\5\37\20\2\u0120\u0121\5\31\r\2\u0121\u0122\5\13")
        buf.write("\6\2\u0122\u0123\5\3\2\2\u0123\u0124\5\35\17\2\u0124>")
        buf.write("\3\2\2\2\u0125\u0126\5\7\4\2\u0126\u0127\5\3\2\2\u0127")
        buf.write("\u0128\5\'\24\2\u0128\u0129\5\13\6\2\u0129@\3\2\2\2\u012a")
        buf.write("\u012b\5\7\4\2\u012b\u012c\5\21\t\2\u012c\u012d\5\3\2")
        buf.write("\2\u012d\u012e\5%\23\2\u012eB\3\2\2\2\u012f\u0130\5\7")
        buf.write("\4\2\u0130\u0131\5\21\t\2\u0131\u0132\5%\23\2\u0132D\3")
        buf.write("\2\2\2\u0133\u0134\5\7\4\2\u0134\u0135\5\37\20\2\u0135")
        buf.write("\u0136\5\35\17\2\u0136\u0137\5\'\24\2\u0137\u0138\5)\25")
        buf.write("\2\u0138F\3\2\2\2\u0139\u013a\5\t\5\2\u013a\u013b\5\23")
        buf.write("\n\2\u013b\u013c\5-\27\2\u013cH\3\2\2\2\u013d\u013e\5")
        buf.write("\t\5\2\u013e\u013f\5\37\20\2\u013fJ\3\2\2\2\u0140\u0141")
        buf.write("\5\t\5\2\u0141\u0142\5\37\20\2\u0142\u0143\5/\30\2\u0143")
        buf.write("\u0144\5\35\17\2\u0144\u0145\5)\25\2\u0145\u0146\5\37")
        buf.write("\20\2\u0146L\3\2\2\2\u0147\u0148\5\13\6\2\u0148\u0149")
        buf.write("\5\31\r\2\u0149\u014a\5\'\24\2\u014a\u014b\5\13\6\2\u014b")
        buf.write("N\3\2\2\2\u014c\u014d\5\13\6\2\u014d\u014e\5\35\17\2\u014e")
        buf.write("\u014f\5\t\5\2\u014fP\3\2\2\2\u0150\u0151\5\r\7\2\u0151")
        buf.write("\u0152\5\23\n\2\u0152\u0153\5\31\r\2\u0153\u0154\5\13")
        buf.write("\6\2\u0154R\3\2\2\2\u0155\u0156\5\r\7\2\u0156\u0157\5")
        buf.write("\37\20\2\u0157\u0158\5%\23\2\u0158T\3\2\2\2\u0159\u015a")
        buf.write("\5\r\7\2\u015a\u015b\5+\26\2\u015b\u015c\5\35\17\2\u015c")
        buf.write("\u015d\5\7\4\2\u015d\u015e\5)\25\2\u015e\u015f\5\23\n")
        buf.write("\2\u015f\u0160\5\37\20\2\u0160\u0161\5\35\17\2\u0161V")
        buf.write("\3\2\2\2\u0162\u0163\5\17\b\2\u0163\u0164\5\37\20\2\u0164")
        buf.write("\u0165\5)\25\2\u0165\u0166\5\37\20\2\u0166X\3\2\2\2\u0167")
        buf.write("\u0168\5\23\n\2\u0168\u0169\5\r\7\2\u0169Z\3\2\2\2\u016a")
        buf.write("\u016b\5\23\n\2\u016b\u016c\5\35\17\2\u016c\\\3\2\2\2")
        buf.write("\u016d\u016e\5\23\n\2\u016e\u016f\5\35\17\2\u016f\u0170")
        buf.write("\5)\25\2\u0170\u0171\5\13\6\2\u0171\u0172\5\17\b\2\u0172")
        buf.write("\u0173\5\13\6\2\u0173\u0174\5%\23\2\u0174^\3\2\2\2\u0175")
        buf.write("\u0176\5\31\r\2\u0176\u0177\5\3\2\2\u0177\u0178\5\5\3")
        buf.write("\2\u0178\u0179\5\13\6\2\u0179\u017a\5\31\r\2\u017a`\3")
        buf.write("\2\2\2\u017b\u017c\5\33\16\2\u017c\u017d\5\37\20\2\u017d")
        buf.write("\u017e\5\t\5\2\u017eb\3\2\2\2\u017f\u0180\5\35\17\2\u0180")
        buf.write("\u0181\5\23\n\2\u0181\u0182\5\31\r\2\u0182d\3\2\2\2\u0183")
        buf.write("\u0184\5\35\17\2\u0184\u0185\5\37\20\2\u0185\u0186\5)")
        buf.write("\25\2\u0186f\3\2\2\2\u0187\u0188\5\37\20\2\u0188\u0189")
        buf.write("\5\r\7\2\u0189h\3\2\2\2\u018a\u018b\5\37\20\2\u018b\u018c")
        buf.write("\5%\23\2\u018cj\3\2\2\2\u018d\u018e\5!\21\2\u018e\u018f")
        buf.write("\5\3\2\2\u018f\u0190\5\7\4\2\u0190\u0191\5\27\f\2\u0191")
        buf.write("\u0192\5\13\6\2\u0192\u0193\5\t\5\2\u0193l\3\2\2\2\u0194")
        buf.write("\u0195\5!\21\2\u0195\u0196\5%\23\2\u0196\u0197\5\37\20")
        buf.write("\2\u0197\u0198\5\7\4\2\u0198\u0199\5\13\6\2\u0199\u019a")
        buf.write("\5\t\5\2\u019a\u019b\5+\26\2\u019b\u019c\5%\23\2\u019c")
        buf.write("\u019d\5\13\6\2\u019dn\3\2\2\2\u019e\u019f\5!\21\2\u019f")
        buf.write("\u01a0\5%\23\2\u01a0\u01a1\5\37\20\2\u01a1\u01a2\5\17")
        buf.write("\b\2\u01a2\u01a3\5%\23\2\u01a3\u01a4\5\3\2\2\u01a4\u01a5")
        buf.write("\5\33\16\2\u01a5p\3\2\2\2\u01a6\u01a7\5%\23\2\u01a7\u01a8")
        buf.write("\5\13\6\2\u01a8\u01a9\5\3\2\2\u01a9\u01aa\5\31\r\2\u01aa")
        buf.write("r\3\2\2\2\u01ab\u01ac\5%\23\2\u01ac\u01ad\5\13\6\2\u01ad")
        buf.write("\u01ae\5\7\4\2\u01ae\u01af\5\37\20\2\u01af\u01b0\5%\23")
        buf.write("\2\u01b0\u01b1\5\t\5\2\u01b1t\3\2\2\2\u01b2\u01b3\5%\23")
        buf.write("\2\u01b3\u01b4\5\13\6\2\u01b4\u01b5\5!\21\2\u01b5\u01b6")
        buf.write("\5\13\6\2\u01b6\u01b7\5\3\2\2\u01b7\u01b8\5)\25\2\u01b8")
        buf.write("v\3\2\2\2\u01b9\u01ba\5\'\24\2\u01ba\u01bb\5\13\6\2\u01bb")
        buf.write("\u01bc\5)\25\2\u01bcx\3\2\2\2\u01bd\u01be\5)\25\2\u01be")
        buf.write("\u01bf\5\21\t\2\u01bf\u01c0\5\13\6\2\u01c0\u01c1\5\35")
        buf.write("\17\2\u01c1z\3\2\2\2\u01c2\u01c3\5)\25\2\u01c3\u01c4\5")
        buf.write("\37\20\2\u01c4|\3\2\2\2\u01c5\u01c6\5)\25\2\u01c6\u01c7")
        buf.write("\5\63\32\2\u01c7\u01c8\5!\21\2\u01c8\u01c9\5\13\6\2\u01c9")
        buf.write("~\3\2\2\2\u01ca\u01cb\5+\26\2\u01cb\u01cc\5\35\17\2\u01cc")
        buf.write("\u01cd\5)\25\2\u01cd\u01ce\5\23\n\2\u01ce\u01cf\5\31\r")
        buf.write("\2\u01cf\u0080\3\2\2\2\u01d0\u01d1\5-\27\2\u01d1\u01d2")
        buf.write("\5\3\2\2\u01d2\u01d3\5%\23\2\u01d3\u0082\3\2\2\2\u01d4")
        buf.write("\u01d5\5/\30\2\u01d5\u01d6\5\21\t\2\u01d6\u01d7\5\23\n")
        buf.write("\2\u01d7\u01d8\5\31\r\2\u01d8\u01d9\5\13\6\2\u01d9\u0084")
        buf.write("\3\2\2\2\u01da\u01db\5/\30\2\u01db\u01dc\5\23\n\2\u01dc")
        buf.write("\u01dd\5)\25\2\u01dd\u01de\5\21\t\2\u01de\u0086\3\2\2")
        buf.write("\2\u01df\u01e0\7-\2\2\u01e0\u0088\3\2\2\2\u01e1\u01e2")
        buf.write("\7/\2\2\u01e2\u008a\3\2\2\2\u01e3\u01e4\7,\2\2\u01e4\u008c")
        buf.write("\3\2\2\2\u01e5\u01e6\7\61\2\2\u01e6\u008e\3\2\2\2\u01e7")
        buf.write("\u01e8\7<\2\2\u01e8\u01e9\7?\2\2\u01e9\u0090\3\2\2\2\u01ea")
        buf.write("\u01eb\7.\2\2\u01eb\u0092\3\2\2\2\u01ec\u01ed\7=\2\2\u01ed")
        buf.write("\u0094\3\2\2\2\u01ee\u01ef\7<\2\2\u01ef\u0096\3\2\2\2")
        buf.write("\u01f0\u01f1\7?\2\2\u01f1\u0098\3\2\2\2\u01f2\u01f3\7")
        buf.write(">\2\2\u01f3\u01f4\7@\2\2\u01f4\u009a\3\2\2\2\u01f5\u01f6")
        buf.write("\7>\2\2\u01f6\u009c\3\2\2\2\u01f7\u01f8\7>\2\2\u01f8\u01f9")
        buf.write("\7?\2\2\u01f9\u009e\3\2\2\2\u01fa\u01fb\7@\2\2\u01fb\u01fc")
        buf.write("\7?\2\2\u01fc\u00a0\3\2\2\2\u01fd\u01fe\7@\2\2\u01fe\u00a2")
        buf.write("\3\2\2\2\u01ff\u0200\7*\2\2\u0200\u00a4\3\2\2\2\u0201")
        buf.write("\u0202\7+\2\2\u0202\u00a6\3\2\2\2\u0203\u0204\7]\2\2\u0204")
        buf.write("\u00a8\3\2\2\2\u0205\u0206\7*\2\2\u0206\u0207\7\60\2\2")
        buf.write("\u0207\u00aa\3\2\2\2\u0208\u0209\7_\2\2\u0209\u00ac\3")
        buf.write("\2\2\2\u020a\u020b\7\60\2\2\u020b\u020c\7+\2\2\u020c\u00ae")
        buf.write("\3\2\2\2\u020d\u020e\7`\2\2\u020e\u00b0\3\2\2\2\u020f")
        buf.write("\u0210\7B\2\2\u0210\u00b2\3\2\2\2\u0211\u0212\7\60\2\2")
        buf.write("\u0212\u00b4\3\2\2\2\u0213\u0214\7\60\2\2\u0214\u0215")
        buf.write("\7\60\2\2\u0215\u00b6\3\2\2\2\u0216\u0217\7}\2\2\u0217")
        buf.write("\u00b8\3\2\2\2\u0218\u0219\7\177\2\2\u0219\u00ba\3\2\2")
        buf.write("\2\u021a\u021b\5+\26\2\u021b\u021c\5\35\17\2\u021c\u021d")
        buf.write("\5\23\n\2\u021d\u021e\5)\25\2\u021e\u00bc\3\2\2\2\u021f")
        buf.write("\u0220\5\23\n\2\u0220\u0221\5\35\17\2\u0221\u0222\5)\25")
        buf.write("\2\u0222\u0223\5\13\6\2\u0223\u0224\5%\23\2\u0224\u0225")
        buf.write("\5\r\7\2\u0225\u0226\5\3\2\2\u0226\u0227\5\7\4\2\u0227")
        buf.write("\u0228\5\13\6\2\u0228\u00be\3\2\2\2\u0229\u022a\5+\26")
        buf.write("\2\u022a\u022b\5\'\24\2\u022b\u022c\5\13\6\2\u022c\u022d")
        buf.write("\5\'\24\2\u022d\u00c0\3\2\2\2\u022e\u022f\5\'\24\2\u022f")
        buf.write("\u0230\5)\25\2\u0230\u0231\5%\23\2\u0231\u0232\5\23\n")
        buf.write("\2\u0232\u0233\5\35\17\2\u0233\u0234\5\17\b\2\u0234\u00c2")
        buf.write("\3\2\2\2\u0235\u0236\5\23\n\2\u0236\u0237\5\33\16\2\u0237")
        buf.write("\u0238\5!\21\2\u0238\u0239\5\31\r\2\u0239\u023a\5\13\6")
        buf.write("\2\u023a\u023b\5\33\16\2\u023b\u023c\5\13\6\2\u023c\u023d")
        buf.write("\5\35\17\2\u023d\u023e\5)\25\2\u023e\u023f\5\3\2\2\u023f")
        buf.write("\u0240\5)\25\2\u0240\u0241\5\23\n\2\u0241\u0242\5\37\20")
        buf.write("\2\u0242\u0243\5\35\17\2\u0243\u00c4\3\2\2\2\u0244\u0245")
        buf.write("\5)\25\2\u0245\u0246\5%\23\2\u0246\u0247\5+\26\2\u0247")
        buf.write("\u0248\5\13\6\2\u0248\u00c6\3\2\2\2\u0249\u024a\5\r\7")
        buf.write("\2\u024a\u024b\5\3\2\2\u024b\u024c\5\31\r\2\u024c\u024d")
        buf.write("\5\'\24\2\u024d\u024e\5\13\6\2\u024e\u00c8\3\2\2\2\u024f")
        buf.write("\u0250\t\34\2\2\u0250\u0251\3\2\2\2\u0251\u0252\be\2\2")
        buf.write("\u0252\u00ca\3\2\2\2\u0253\u0254\7*\2\2\u0254\u0255\7")
        buf.write(",\2\2\u0255\u0259\3\2\2\2\u0256\u0258\13\2\2\2\u0257\u0256")
        buf.write("\3\2\2\2\u0258\u025b\3\2\2\2\u0259\u025a\3\2\2\2\u0259")
        buf.write("\u0257\3\2\2\2\u025a\u025c\3\2\2\2\u025b\u0259\3\2\2\2")
        buf.write("\u025c\u025d\7,\2\2\u025d\u025e\7+\2\2\u025e\u025f\3\2")
        buf.write("\2\2\u025f\u0260\bf\2\2\u0260\u00cc\3\2\2\2\u0261\u0265")
        buf.write("\7}\2\2\u0262\u0264\13\2\2\2\u0263\u0262\3\2\2\2\u0264")
        buf.write("\u0267\3\2\2\2\u0265\u0266\3\2\2\2\u0265\u0263\3\2\2\2")
        buf.write("\u0266\u0268\3\2\2\2\u0267\u0265\3\2\2\2\u0268\u0269\7")
        buf.write("\177\2\2\u0269\u026a\3\2\2\2\u026a\u026b\bg\2\2\u026b")
        buf.write("\u00ce\3\2\2\2\u026c\u0270\t\35\2\2\u026d\u026f\t\36\2")
        buf.write("\2\u026e\u026d\3\2\2\2\u026f\u0272\3\2\2\2\u0270\u026e")
        buf.write("\3\2\2\2\u0270\u0271\3\2\2\2\u0271\u00d0\3\2\2\2\u0272")
        buf.write("\u0270\3\2\2\2\u0273\u0279\7)\2\2\u0274\u0275\7)\2\2\u0275")
        buf.write("\u0278\7)\2\2\u0276\u0278\n\37\2\2\u0277\u0274\3\2\2\2")
        buf.write("\u0277\u0276\3\2\2\2\u0278\u027b\3\2\2\2\u0279\u0277\3")
        buf.write("\2\2\2\u0279\u027a\3\2\2\2\u027a\u027c\3\2\2\2\u027b\u0279")
        buf.write("\3\2\2\2\u027c\u027d\7)\2\2\u027d\u00d2\3\2\2\2\u027e")
        buf.write("\u0280\4\62;\2\u027f\u027e\3\2\2\2\u0280\u0281\3\2\2\2")
        buf.write("\u0281\u027f\3\2\2\2\u0281\u0282\3\2\2\2\u0282\u00d4\3")
        buf.write("\2\2\2\u0283\u0285\4\62;\2\u0284\u0283\3\2\2\2\u0285\u0286")
        buf.write("\3\2\2\2\u0286\u0284\3\2\2\2\u0286\u0287\3\2\2\2\u0287")
        buf.write("\u0294\3\2\2\2\u0288\u028a\7\60\2\2\u0289\u028b\4\62;")
        buf.write("\2\u028a\u0289\3\2\2\2\u028b\u028c\3\2\2\2\u028c\u028a")
        buf.write("\3\2\2\2\u028c\u028d\3\2\2\2\u028d\u028f\3\2\2\2\u028e")
        buf.write("\u0290\5\u00d7l\2\u028f\u028e\3\2\2\2\u028f\u0290\3\2")
        buf.write("\2\2\u0290\u0292\3\2\2\2\u0291\u0288\3\2\2\2\u0291\u0292")
        buf.write("\3\2\2\2\u0292\u0295\3\2\2\2\u0293\u0295\5\u00d7l\2\u0294")
        buf.write("\u0291\3\2\2\2\u0294\u0293\3\2\2\2\u0295\u00d6\3\2\2\2")
        buf.write("\u0296\u0298\7g\2\2\u0297\u0299\t \2\2\u0298\u0297\3\2")
        buf.write("\2\2\u0298\u0299\3\2\2\2\u0299\u029b\3\2\2\2\u029a\u029c")
        buf.write("\4\62;\2\u029b\u029a\3\2\2\2\u029c\u029d\3\2\2\2\u029d")
        buf.write("\u029b\3\2\2\2\u029d\u029e\3\2\2\2\u029e\u00d8\3\2\2\2")
        buf.write("\20\2\u0259\u0265\u0270\u0277\u0279\u0281\u0286\u028c")
        buf.write("\u028f\u0291\u0294\u0298\u029d\3\b\2\2")
        return buf.getvalue()


class pascalLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    AND = 1
    ARRAY = 2
    BEGIN = 3
    BOOLEAN = 4
    CASE = 5
    CHAR = 6
    CHR = 7
    CONST = 8
    DIV = 9
    DO = 10
    DOWNTO = 11
    ELSE = 12
    END = 13
    FILE = 14
    FOR = 15
    FUNCTION = 16
    GOTO = 17
    IF = 18
    IN = 19
    INTEGER = 20
    LABEL = 21
    MOD = 22
    NIL = 23
    NOT = 24
    OF = 25
    OR = 26
    PACKED = 27
    PROCEDURE = 28
    PROGRAM = 29
    REAL = 30
    RECORD = 31
    REPEAT = 32
    SET = 33
    THEN = 34
    TO = 35
    TYPE = 36
    UNTIL = 37
    VAR = 38
    WHILE = 39
    WITH = 40
    PLUS = 41
    MINUS = 42
    STAR = 43
    SLASH = 44
    ASSIGN = 45
    COMMA = 46
    SEMI = 47
    COLON = 48
    EQUAL = 49
    NOT_EQUAL = 50
    LT = 51
    LE = 52
    GE = 53
    GT = 54
    LPAREN = 55
    RPAREN = 56
    LBRACK = 57
    LBRACK2 = 58
    RBRACK = 59
    RBRACK2 = 60
    POINTER = 61
    AT = 62
    DOT = 63
    DOTDOT = 64
    LCURLY = 65
    RCURLY = 66
    UNIT = 67
    INTERFACE = 68
    USES = 69
    STRING = 70
    IMPLEMENTATION = 71
    TRUE = 72
    FALSE = 73
    WS = 74
    COMMENT_1 = 75
    COMMENT_2 = 76
    IDENT = 77
    STRING_LITERAL = 78
    NUM_INT = 79
    NUM_REAL = 80

    channelNames = [ u"DEFAULT_TOKEN_CHANNEL", u"HIDDEN" ]

    modeNames = [ "DEFAULT_MODE" ]

    literalNames = [ "<INVALID>",
            "'+'", "'-'", "'*'", "'/'", "':='", "','", "';'", "':'", "'='", 
            "'<>'", "'<'", "'<='", "'>='", "'>'", "'('", "')'", "'['", "'(.'", 
            "']'", "'.)'", "'^'", "'@'", "'.'", "'..'", "'{'", "'}'" ]

    symbolicNames = [ "<INVALID>",
            "AND", "ARRAY", "BEGIN", "BOOLEAN", "CASE", "CHAR", "CHR", "CONST", 
            "DIV", "DO", "DOWNTO", "ELSE", "END", "FILE", "FOR", "FUNCTION", 
            "GOTO", "IF", "IN", "INTEGER", "LABEL", "MOD", "NIL", "NOT", 
            "OF", "OR", "PACKED", "PROCEDURE", "PROGRAM", "REAL", "RECORD", 
            "REPEAT", "SET", "THEN", "TO", "TYPE", "UNTIL", "VAR", "WHILE", 
            "WITH", "PLUS", "MINUS", "STAR", "SLASH", "ASSIGN", "COMMA", 
            "SEMI", "COLON", "EQUAL", "NOT_EQUAL", "LT", "LE", "GE", "GT", 
            "LPAREN", "RPAREN", "LBRACK", "LBRACK2", "RBRACK", "RBRACK2", 
            "POINTER", "AT", "DOT", "DOTDOT", "LCURLY", "RCURLY", "UNIT", 
            "INTERFACE", "USES", "STRING", "IMPLEMENTATION", "TRUE", "FALSE", 
            "WS", "COMMENT_1", "COMMENT_2", "IDENT", "STRING_LITERAL", "NUM_INT", 
            "NUM_REAL" ]

    ruleNames = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
                  "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", 
                  "W", "X", "Y", "Z", "AND", "ARRAY", "BEGIN", "BOOLEAN", 
                  "CASE", "CHAR", "CHR", "CONST", "DIV", "DO", "DOWNTO", 
                  "ELSE", "END", "FILE", "FOR", "FUNCTION", "GOTO", "IF", 
                  "IN", "INTEGER", "LABEL", "MOD", "NIL", "NOT", "OF", "OR", 
                  "PACKED", "PROCEDURE", "PROGRAM", "REAL", "RECORD", "REPEAT", 
                  "SET", "THEN", "TO", "TYPE", "UNTIL", "VAR", "WHILE", 
                  "WITH", "PLUS", "MINUS", "STAR", "SLASH", "ASSIGN", "COMMA", 
                  "SEMI", "COLON", "EQUAL", "NOT_EQUAL", "LT", "LE", "GE", 
                  "GT", "LPAREN", "RPAREN", "LBRACK", "LBRACK2", "RBRACK", 
                  "RBRACK2", "POINTER", "AT", "DOT", "DOTDOT", "LCURLY", 
                  "RCURLY", "UNIT", "INTERFACE", "USES", "STRING", "IMPLEMENTATION", 
                  "TRUE", "FALSE", "WS", "COMMENT_1", "COMMENT_2", "IDENT", 
                  "STRING_LITERAL", "NUM_INT", "NUM_REAL", "EXPONENT" ]

    grammarFileName = "pascal.g4"

    def __init__(self, input=None, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.8")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


