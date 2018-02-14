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
import 'testability.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/src/core/di.dart' show Injectable;
import '../zone/ng_zone.dart';
import 'package:angular2/src/core/di.template.dart' as i0;
import '../zone/ng_zone.template.dart' as i1;
export 'testability.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(Testability, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[NgZone]],
(NgZone _ngZone) => new Testability(_ngZone))
)
..registerType(TestabilityRegistry, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new TestabilityRegistry())
)
;
i0.initReflector();
i1.initReflector();
}
