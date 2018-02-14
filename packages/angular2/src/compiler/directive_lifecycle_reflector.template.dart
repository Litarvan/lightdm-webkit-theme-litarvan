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
import 'directive_lifecycle_reflector.dart';
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart';
import 'package:angular2/src/core/reflection/reflection.dart';
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
export 'directive_lifecycle_reflector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
