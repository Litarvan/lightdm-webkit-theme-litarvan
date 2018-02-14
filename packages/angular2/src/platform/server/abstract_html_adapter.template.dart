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
import 'abstract_html_adapter.dart';
import 'package:angular2/platform/common_dom.dart';
import 'package:angular2/src/compiler/xhr.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:angular2/platform/common_dom.template.dart' as i0;
import 'package:angular2/src/compiler/xhr.template.dart' as i1;
export 'abstract_html_adapter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
