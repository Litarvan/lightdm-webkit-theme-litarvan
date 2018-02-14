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
import 'change_detection_util.dart';
import 'package:angular2/src/facade/lang.dart' show looseIdentical, isPrimitive;
import 'package:collection/collection.dart';
import 'package:angular2/src/facade/lang.template.dart' as i0;
export 'change_detection_util.dart';
export 'package:angular2/src/facade/lang.dart' show looseIdentical;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
}
