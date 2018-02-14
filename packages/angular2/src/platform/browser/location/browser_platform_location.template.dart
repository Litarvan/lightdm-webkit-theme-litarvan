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
import 'browser_platform_location.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html';
import 'package:angular2/src/core/di/decorators.dart' show Injectable;
import 'package:angular2/src/facade/browser.dart' show History, Location;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'platform_location.dart' show PlatformLocation;
import 'package:angular2/src/core/di/decorators.template.dart' as i0;
import 'package:angular2/src/facade/browser.template.dart' as i1;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i2;
import 'platform_location.template.dart' as i3;
export 'browser_platform_location.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(BrowserPlatformLocation, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new BrowserPlatformLocation())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
