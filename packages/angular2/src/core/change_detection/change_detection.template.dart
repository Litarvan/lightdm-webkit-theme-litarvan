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
import 'change_detection.dart';
import 'differs/default_iterable_differ.dart' show DefaultIterableDifferFactory;
import 'differs/default_keyvalue_differ.dart' show DefaultKeyValueDifferFactory;
import 'differs/iterable_differs.dart' show IterableDiffers, IterableDifferFactory;
import 'differs/keyvalue_differs.dart' show KeyValueDiffers, KeyValueDifferFactory;
import 'differs/default_iterable_differ.template.dart' as i0;
import 'differs/default_keyvalue_differ.template.dart' as i1;
import 'differs/iterable_differs.template.dart' as i2;
import 'differs/keyvalue_differs.template.dart' as i3;
import 'change_detection_util.template.dart' as i4;
import 'change_detector_ref.template.dart' as i5;
import 'constants.template.dart' as i6;
import 'pipe_transform.template.dart' as i7;
export 'change_detection.dart';
export 'change_detection_util.dart' show WrappedValue, ValueUnwrapper, SimpleChange, devModeEqual, looseIdentical, uninitialized;
export 'change_detector_ref.dart' show ChangeDetectorRef;
export 'constants.dart' show ChangeDetectionStrategy, ChangeDetectorState, isDefaultChangeDetectionStrategy;
export 'differs/default_iterable_differ.dart' show DefaultIterableDifferFactory, CollectionChangeRecord;
export 'differs/default_keyvalue_differ.dart' show DefaultKeyValueDifferFactory, KeyValueChangeRecord;
export 'differs/iterable_differs.dart' show IterableDiffers, IterableDiffer, IterableDifferFactory, TrackByFn;
export 'differs/keyvalue_differs.dart' show KeyValueDiffers, KeyValueDiffer, KeyValueDifferFactory;
export 'pipe_transform.dart' show PipeTransform;

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
}
