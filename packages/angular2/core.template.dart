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
library angular2.core.template.dart;

import 'core.dart';
import 'src/core/angular_entrypoint.template.dart' as i0;
import 'src/core/application_common_providers.template.dart' as i1;
import 'src/core/application_ref.template.dart' as i2;
import 'src/core/application_tokens.template.dart' as i3;
import 'src/core/change_detection.template.dart' as i4;
import 'src/core/di.template.dart' as i5;
import 'src/core/linker.template.dart' as i6;
import 'src/core/metadata.template.dart' as i7;
import 'src/core/platform_common_providers.template.dart' as i8;
import 'src/core/platform_directives_and_pipes.template.dart' as i9;
import 'src/core/reflection/reflection.template.dart' as i10;
import 'src/core/render.template.dart' as i11;
import 'src/core/testability/testability.template.dart' as i12;
import 'src/core/zone.template.dart' as i13;
import 'src/facade/facade.template.dart' as i14;
export 'core.dart';
export 'src/core/angular_entrypoint.dart' show AngularEntrypoint;
export 'src/core/application_common_providers.dart';
export 'src/core/application_ref.dart' show createPlatform, disposePlatform, getPlatform, coreLoadAndBootstrap, coreBootstrap, createNgZone, PlatformRef, ApplicationRef;
export 'src/core/application_tokens.dart' show APP_ID, APP_INITIALIZER, PACKAGE_ROOT_URL, PLATFORM_INITIALIZER;
export 'src/core/change_detection.dart';
export 'src/core/di.dart';
export 'src/core/linker.dart';
export 'src/core/metadata.dart';
export 'src/core/platform_common_providers.dart' show PLATFORM_COMMON_PROVIDERS;
export 'src/core/platform_directives_and_pipes.dart';
export 'src/core/reflection/reflection.dart' hide NoReflectionCapabilitiesError;
export 'src/core/render.dart';
export 'src/core/testability/testability.dart';
export 'src/core/zone.dart';
export 'src/facade/facade.dart';

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
i12.initReflector();
i13.initReflector();
i14.initReflector();
}
