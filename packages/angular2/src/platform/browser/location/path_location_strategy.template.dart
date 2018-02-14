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
import 'path_location_strategy.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html' as html;
import 'package:angular2/di.dart' show Injectable, Inject, Optional;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'location.dart' show Location;
import 'location_strategy.dart' show LocationStrategy, APP_BASE_HREF;
import 'platform_location.dart' show PlatformLocation;
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'location.template.dart' as i2;
import 'location_strategy.template.dart' as i3;
import 'platform_location.template.dart' as i4;
export 'path_location_strategy.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(PathLocationStrategy, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[PlatformLocation], const <dynamic>[String, const Optional(), const Inject(APP_BASE_HREF)]],
(PlatformLocation _platformLocation, String href) => new PathLocationStrategy(_platformLocation, href))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
