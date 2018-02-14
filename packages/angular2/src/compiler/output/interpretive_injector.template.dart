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
import 'interpretive_injector.dart';
import 'package:angular2/src/core/linker/injector_factory.dart' show CodegenInjector;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'dynamic_instance.dart';
import 'package:angular2/src/core/linker/injector_factory.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'dynamic_instance.template.dart' as i2;
export 'interpretive_injector.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
