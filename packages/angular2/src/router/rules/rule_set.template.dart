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
import 'rule_set.dart';
import 'dart:async';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../instruction.dart' show ComponentInstruction;
import '../route_config/route_config_impl.dart' show Route, AsyncRoute, AuxRoute, Redirect, RouteDefinition;
import '../rules/route_paths/regex_route_path.dart' show RegexSerializer;
import '../url_parser.dart' show Url;
import 'route_handlers/async_route_handler.dart' show AsyncRouteHandler;
import 'route_handlers/sync_route_handler.dart' show SyncRouteHandler;
import 'route_paths/param_route_path.dart' show ParamRoutePath;
import 'route_paths/regex_route_path.dart' show RegexRoutePath;
import 'route_paths/route_path.dart' show RoutePath;
import 'rules.dart' show AbstractRule, RouteRule, RedirectRule, RouteMatch, PathMatch;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import '../instruction.template.dart' as i1;
import '../route_config/route_config_impl.template.dart' as i2;
import '../rules/route_paths/regex_route_path.template.dart' as i3;
import '../url_parser.template.dart' as i4;
import 'route_handlers/async_route_handler.template.dart' as i5;
import 'route_handlers/sync_route_handler.template.dart' as i6;
import 'route_paths/param_route_path.template.dart' as i7;
import 'route_paths/regex_route_path.template.dart' as i8;
import 'route_paths/route_path.template.dart' as i9;
import 'rules.template.dart' as i10;
export 'rule_set.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
i10.initReflector();
}
