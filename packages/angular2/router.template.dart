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
library angular2.router.template.dart;

import 'router.dart';
import 'src/router/directives/router_link.dart' show RouterLink;
import 'src/router/directives/router_outlet.dart' show RouterOutlet;
import 'src/router/directives/router_link.template.dart' as i0;
import 'src/router/directives/router_outlet.template.dart' as i1;
import 'package:angular2/core.template.dart' as i2;
import 'package:angular2/src/router/router_providers.template.dart' as i3;
import 'package:angular2/src/router/router_providers_common.template.dart' as i4;
import 'src/router/instruction.template.dart' as i5;
import 'src/router/interfaces.template.dart' as i6;
import 'src/router/lifecycle/lifecycle_annotations.template.dart' as i7;
import 'src/router/route_config/route_config_decorator.template.dart' as i8;
import 'src/router/route_definition.template.dart' as i9;
import 'src/router/route_registry.template.dart' as i10;
import 'src/router/router.template.dart' as i11;
export 'router.dart';
export 'package:angular2/core.dart' show OpaqueToken;
export 'package:angular2/src/router/router_providers.dart' show ROUTER_PROVIDERS, ROUTER_BINDINGS;
export 'package:angular2/src/router/router_providers_common.dart' show ROUTER_PROVIDERS_COMMON;
export 'src/router/directives/router_link.dart' show RouterLink;
export 'src/router/directives/router_outlet.dart' show RouterOutlet;
export 'src/router/instruction.dart' show RouteParams, RouteData;
export 'src/router/instruction.dart' show Instruction, ComponentInstruction;
export 'src/router/interfaces.dart' show OnActivate, OnDeactivate, OnReuse, CanDeactivate, CanReuse;
export 'src/router/lifecycle/lifecycle_annotations.dart' show CanActivate;
export 'src/router/route_config/route_config_decorator.dart';
export 'src/router/route_definition.dart';
export 'src/router/route_registry.dart' show RouteRegistry, ROUTER_PRIMARY_COMPONENT;
export 'src/router/router.dart' show Router;

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
i11.initReflector();
}
