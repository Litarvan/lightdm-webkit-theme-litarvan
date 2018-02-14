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
import 'route_config_impl.dart';
import 'dart:async';
import '../route_definition.dart' show RouteDefinition;
import '../rules/route_paths/regex_route_path.dart' show RegexSerializer;
import '../route_definition.template.dart' as i0;
import '../rules/route_paths/regex_route_path.template.dart' as i1;
export 'route_config_impl.dart';
export '../route_definition.dart' show RouteDefinition;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
