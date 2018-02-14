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
import 'ng_zone.dart';
import 'package:angular2/src/facade/async.dart' show EventEmitter;
import 'ng_zone_impl.dart' show NgZoneImpl, NgZoneError;
import 'package:angular2/src/facade/async.template.dart' as i0;
import 'ng_zone_impl.template.dart' as i1;
export 'ng_zone.dart';
export 'ng_zone_impl.dart' show NgZoneError;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
