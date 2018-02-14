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
import 'hash_location_strategy.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html' as html;
import 'package:angular2/di.dart' show Injectable, Inject, Optional;
import 'location.dart' show Location;
import 'location_strategy.dart' show LocationStrategy, APP_BASE_HREF;
import 'platform_location.dart' show PlatformLocation;
import 'package:angular2/di.template.dart' as i0;
import 'location.template.dart' as i1;
import 'location_strategy.template.dart' as i2;
import 'platform_location.template.dart' as i3;
export 'hash_location_strategy.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HashLocationStrategy, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[PlatformLocation], const <dynamic>[String, const Optional(), const Inject(APP_BASE_HREF)]],
(PlatformLocation _platformLocation, String _baseHref) => new HashLocationStrategy(_platformLocation, _baseHref))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
