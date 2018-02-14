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
import 'dynamic_component_loader.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'dart:html';
import 'package:angular2/src/core/di.dart' show Injector, Injectable;
import 'app_view_utils.dart' show OnDestroyCallback;
import 'component_factory.dart' show ComponentRef;
import 'component_resolver.dart' show ComponentResolver;
import 'view_container_ref.dart' show ViewContainerRef;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'app_view_utils.template.dart' as i1;
import 'component_factory.template.dart' as i2;
import 'component_resolver.template.dart' as i3;
import 'view_container_ref.template.dart' as i4;
export 'dynamic_component_loader.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DynamicComponentLoaderImpl, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[ComponentResolver]],
(ComponentResolver _compiler) => new DynamicComponentLoaderImpl(_compiler))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
