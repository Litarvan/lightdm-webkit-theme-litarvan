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
import 'router_outlet.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Directive, Attribute, ComponentResolver, ComponentFactory, ComponentRef, ViewContainerRef, OnDestroy, Output, MapInjector;
import 'package:angular2/src/facade/async.dart' show EventEmitter;
import 'package:collection/collection.dart' show MapEquality;
import '../instruction.dart' show ComponentInstruction, RouteParams, RouteData;
import '../interfaces.dart' show OnActivate, CanReuse, OnReuse, OnDeactivate, CanDeactivate;
import '../lifecycle/lifecycle_annotations.dart' as hook_mod;
import '../lifecycle/route_lifecycle_reflector.dart' show hasLifecycleHook;
import '../router.dart' as router_mod;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/async.template.dart' as i1;
import '../instruction.template.dart' as i2;
import '../interfaces.template.dart' as i3;
import '../lifecycle/lifecycle_annotations.template.dart' as i4;
import '../lifecycle/route_lifecycle_reflector.template.dart' as i5;
import '../router.template.dart' as i6;
export 'router_outlet.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RouterOutlet, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ViewContainerRef], const <dynamic>[ComponentResolver], const <dynamic>[router_mod.Router], const <dynamic>[String, const Attribute("name")]],
(ViewContainerRef _viewContainerRef, ComponentResolver _loader, router_mod.Router _parentRouter, String nameAttr) => new RouterOutlet(_viewContainerRef, _loader, _parentRouter, nameAttr),
const <dynamic>[OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
}
