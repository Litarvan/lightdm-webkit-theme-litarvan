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
import 'router_providers.dart';
import 'package:angular2/di.dart' show Provider;
import 'package:angular2/platform/common.dart' show PlatformLocation;
import 'package:angular2/src/platform/browser/location/browser_platform_location.dart' show BrowserPlatformLocation;
import 'router_providers_common.dart' show ROUTER_PROVIDERS_COMMON;
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/platform/common.template.dart' as i1;
import 'package:angular2/src/platform/browser/location/browser_platform_location.template.dart' as i2;
import 'router_providers_common.template.dart' as i3;
export 'router_providers.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
