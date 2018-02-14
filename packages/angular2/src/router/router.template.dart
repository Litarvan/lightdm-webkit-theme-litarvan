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
import 'router.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Inject, Injectable;
import 'package:angular2/platform/common.dart' show Location, PathLocationStrategy;
import 'package:angular2/src/facade/async.dart' show EventEmitter;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'directives/router_outlet.dart' show RouterOutlet;
import 'instruction.dart' show ComponentInstruction, Instruction;
import 'route_config/route_config_impl.dart' show RouteDefinition;
import 'route_registry.dart' show RouteRegistry, ROUTER_PRIMARY_COMPONENT;
import 'utils.dart' show getCanActivateHook;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/platform/common.template.dart' as i1;
import 'package:angular2/src/facade/async.template.dart' as i2;
import 'package:angular2/src/facade/exceptions.template.dart' as i3;
import 'directives/router_outlet.template.dart' as i4;
import 'instruction.template.dart' as i5;
import 'route_config/route_config_impl.template.dart' as i6;
import 'route_registry.template.dart' as i7;
import 'utils.template.dart' as i8;
export 'router.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(Router, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[RouteRegistry], const <dynamic>[Router], const <dynamic>[dynamic], const <dynamic>[Router]],
(RouteRegistry registry, Router parent, dynamic hostComponent, Router root) => new Router(registry, parent, hostComponent, root))
)
..registerType(RootRouter, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[RouteRegistry], const <dynamic>[Location], const <dynamic>[dynamic, const Inject(ROUTER_PRIMARY_COMPONENT)]],
(RouteRegistry registry, Location location, dynamic primaryComponent) => new RootRouter(registry, location, primaryComponent))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
}
