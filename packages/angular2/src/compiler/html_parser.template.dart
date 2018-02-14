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
import 'html_parser.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:source_span/source_span.dart';
import 'html_ast.dart' show HtmlAst, HtmlAttrAst, HtmlTextAst, HtmlCommentAst, HtmlElementAst;
import 'html_lexer.dart' show HtmlToken, HtmlTokenType, tokenizeHtml;
import 'html_tags.dart' show getHtmlTagDefinition, getNsPrefix, mergeNsAndName;
import 'parse_util.dart' show ParseError;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'html_ast.template.dart' as i1;
import 'html_lexer.template.dart' as i2;
import 'html_tags.template.dart' as i3;
import 'parse_util.template.dart' as i4;
export 'html_parser.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HtmlParser, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new HtmlParser())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
