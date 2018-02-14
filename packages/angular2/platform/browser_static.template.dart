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
library angular2.platform.browser_static.template.dart;

import 'browser_static.dart';
import 'dart:async';
import 'package:angular2/core.dart' show ComponentRef, coreLoadAndBootstrap, ReflectiveInjector, PlatformRef, getPlatform, createPlatform, PLATFORM_INITIALIZER, MapInjector;
import 'package:angular2/src/core/application_ref.dart' show PlatformRefImpl;
import 'package:angular2/src/core/reflection/reflection.dart' show Reflector, reflector;
import 'package:angular2/src/core/testability/testability.dart' show TestabilityRegistry;
import 'package:angular2/src/platform/browser_common.dart' show BROWSER_APP_COMMON_PROVIDERS, createInitDomAdapter;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/core/application_ref.template.dart' as i1;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i2;
import 'package:angular2/src/core/testability/testability.template.dart' as i3;
import 'package:angular2/src/platform/browser_common.template.dart' as i4;
import 'package:angular2/src/core/angular_entrypoint.template.dart' as i5;
export 'browser_static.dart';
export 'package:angular2/src/core/angular_entrypoint.dart';
export 'package:angular2/src/platform/browser_common.dart' show BROWSER_PROVIDERS, BrowserDomAdapter, Title, enableDebugTools, disableDebugTools;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
