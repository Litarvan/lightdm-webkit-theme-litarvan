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
import 'ng_style.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html';
import 'package:angular2/core.dart' show DoCheck, KeyValueDiffer, KeyValueDiffers, ElementRef, Directive;
import '../../core/change_detection/differs/default_keyvalue_differ.dart' show KeyValueChangeRecord;
import 'package:angular2/core.template.dart' as i0;
import '../../core/change_detection/differs/default_keyvalue_differ.template.dart' as i1;
export 'ng_style.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgStyle, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[KeyValueDiffers], const <dynamic>[ElementRef]],
(KeyValueDiffers _differs, ElementRef elementRef) => new NgStyle(_differs, elementRef),
const <dynamic>[DoCheck])
)
;
i0.initReflector();
i1.initReflector();
}
