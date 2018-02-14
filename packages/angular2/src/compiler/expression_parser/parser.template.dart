// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di/decorators.dart' show Injectable;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show jsSplit;
import 'ast.dart' show AST, EmptyExpr, ImplicitReceiver, PropertyRead, PropertyWrite, SafePropertyRead, LiteralPrimitive, Binary, PrefixNot, Conditional, IfNull, BindingPipe, Chain, KeyedRead, KeyedWrite, LiteralArray, LiteralMap, Interpolation, MethodCall, SafeMethodCall, FunctionCall, TemplateBinding, ASTWithSource, AstVisitor, Quote;
import 'lexer.dart' show Lexer, EOF, isIdentifier, isQuote, Token, $PERIOD, $COLON, $SEMICOLON, $LBRACKET, $RBRACKET, $COMMA, $LBRACE, $RBRACE, $LPAREN, $RPAREN, $SLASH;
import 'package:angular2/src/core/di/decorators.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'ast.template.dart' as i3;
import 'lexer.template.dart' as i4;
export 'parser.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(Parser, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[Lexer]],
(Lexer _lexer) => new Parser(_lexer))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
