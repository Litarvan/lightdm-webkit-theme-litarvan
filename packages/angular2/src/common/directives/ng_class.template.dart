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
import 'ng_class.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show DoCheck, OnDestroy, Directive, ElementRef, IterableDiffers, KeyValueDiffers, IterableDiffer, KeyValueDiffer, CollectionChangeRecord, KeyValueChangeRecord;
import 'package:angular2/core.template.dart' as i0;
export 'ng_class.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgClass, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[IterableDiffers], const <dynamic>[KeyValueDiffers], const <dynamic>[ElementRef]],
(IterableDiffers _iterableDiffers, KeyValueDiffers _keyValueDiffers, ElementRef _ngEl) => new NgClass(_iterableDiffers, _keyValueDiffers, _ngEl),
const <dynamic>[DoCheck, OnDestroy])
)
;
i0.initReflector();
}
