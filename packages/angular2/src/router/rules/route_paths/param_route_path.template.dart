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
import 'param_route_path.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../../url_parser.dart' show Url, RootUrl, convertUrlParamsToArray;
import '../../utils.dart' show TouchMap, normalizeString;
import 'route_path.dart' show RoutePath, GeneratedUrl, MatchedUrl;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import '../../url_parser.template.dart' as i1;
import '../../utils.template.dart' as i2;
import 'route_path.template.dart' as i3;
export 'param_route_path.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
