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
import 'ng_for.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show DoCheck, Directive, ChangeDetectorRef, IterableDiffer, IterableDiffers, ViewContainerRef, ViewRef, TemplateRef, EmbeddedViewRef, TrackByFn;
import '../../core/change_detection/differs/default_iterable_differ.dart' show DefaultIterableDiffer, CollectionChangeRecord;
import '../../facade/exceptions.dart' show BaseException;
import 'package:angular2/core.template.dart' as i0;
import '../../core/change_detection/differs/default_iterable_differ.template.dart' as i1;
import '../../facade/exceptions.template.dart' as i2;
export 'ng_for.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgFor, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ViewContainerRef], const <dynamic>[TemplateRef], const <dynamic>[IterableDiffers], const <dynamic>[ChangeDetectorRef]],
(ViewContainerRef _viewContainer, TemplateRef _templateRef, IterableDiffers _iterableDiffers, ChangeDetectorRef _cdr) => new NgFor(_viewContainer, _templateRef, _iterableDiffers, _cdr),
const <dynamic>[DoCheck])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
