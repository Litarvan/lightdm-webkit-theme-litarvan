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
import 'reflective_exceptions.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException, WrappedException;
import 'decorators.dart';
import 'provider.dart';
import 'reflective_injector.dart' show ReflectiveInjector;
import 'reflective_key.dart' show ReflectiveKey;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'decorators.template.dart' as i1;
import 'provider.template.dart' as i2;
import 'reflective_injector.template.dart' as i3;
import 'reflective_key.template.dart' as i4;
export 'reflective_exceptions.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
