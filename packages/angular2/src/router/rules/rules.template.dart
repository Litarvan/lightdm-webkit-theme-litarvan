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
import 'rules.dart';
import 'dart:async';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../instruction.dart' show ComponentInstruction;
import '../url_parser.dart' show Url, convertUrlParamsToArray;
import 'route_handlers/route_handler.dart' show RouteHandler;
import 'route_paths/route_path.dart' show RoutePath;
import 'route_paths/route_path.dart' show GeneratedUrl;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import '../instruction.template.dart' as i1;
import '../url_parser.template.dart' as i2;
import 'route_handlers/route_handler.template.dart' as i3;
import 'route_paths/route_path.template.dart' as i4;
export 'rules.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
