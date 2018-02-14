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
import 'application_ref.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/change_detection/change_detector_ref.dart';
import 'package:angular2/src/core/di.dart';
import 'package:angular2/src/core/linker/app_view_utils.dart';
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentRef, ComponentFactory;
import 'package:angular2/src/core/linker/component_resolver.dart';
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry, Testability;
import 'package:angular2/src/core/zone/ng_zone.dart' show NgZone, NgZoneError;
import 'package:angular2/src/facade/exceptions.dart' show BaseException, ExceptionHandler;
import 'package:angular2/src/facade/lang.dart' show assertionsEnabled;
import 'application_tokens.dart' show PLATFORM_INITIALIZER, APP_INITIALIZER;
import 'profile/profile.dart' show wtfLeave, wtfCreateScope, WtfScopeFn;
import 'package:angular2/src/core/change_detection/change_detector_ref.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i2;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i3;
import 'package:angular2/src/core/linker/component_resolver.template.dart' as i4;
import 'package:angular2/src/core/testability/testability.template.dart' as i5;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i6;
import 'package:angular2/src/facade/exceptions.template.dart' as i7;
import 'package:angular2/src/facade/lang.template.dart' as i8;
import 'application_tokens.template.dart' as i9;
import 'profile/profile.template.dart' as i10;
export 'application_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(PlatformRefImpl, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new PlatformRefImpl())
)
..registerType(ApplicationRefImpl, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[PlatformRefImpl], const <dynamic>[NgZone], const <dynamic>[Injector]],
(PlatformRefImpl _platform, NgZone _zone, Injector _injector) => new ApplicationRefImpl(_platform, _zone, _injector))
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
i9.initReflector();
i10.initReflector();
}
