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
import 'view_ref.dart';
import 'package:angular2/src/core/change_detection/constants.dart' show ChangeDetectionStrategy;
import 'package:angular2/src/core/linker/app_view_utils.dart';
import '../change_detection/change_detector_ref.dart' show ChangeDetectorRef;
import 'app_view.dart' show AppView;
import 'package:angular2/src/core/change_detection/constants.template.dart' as i0;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i1;
import '../change_detection/change_detector_ref.template.dart' as i2;
import 'app_view.template.dart' as i3;
export 'view_ref.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
