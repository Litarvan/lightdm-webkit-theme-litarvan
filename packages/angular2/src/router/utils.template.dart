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
import 'utils.dart';
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentFactory;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'lifecycle/lifecycle_annotations_impl.dart' show CanActivate;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
import 'lifecycle/lifecycle_annotations_impl.template.dart' as i2;
export 'utils.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
