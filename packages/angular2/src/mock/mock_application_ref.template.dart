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
import 'mock_application_ref.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/application_ref.dart' show ApplicationRef;
import 'package:angular2/src/core/di.dart' show Injectable, Injector;
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentRef, ComponentFactory;
import 'package:angular2/src/core/zone/ng_zone.dart' show NgZone;
import 'package:angular2/src/core/application_ref.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i2;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i3;
export 'mock_application_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(MockApplicationRef, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new MockApplicationRef())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
