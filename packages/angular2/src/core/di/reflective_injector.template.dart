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
import 'reflective_injector.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'injector.dart' show Injector, THROW_IF_NOT_FOUND;
import 'decorators.dart';
import 'provider.dart' show Provider;
import 'reflective_exceptions.dart' show AbstractProviderError, NoProviderError, CyclicDependencyError, InstantiationError, OutOfBoundsError;
import 'reflective_key.dart' show ReflectiveKey;
import 'reflective_provider.dart' show ResolvedReflectiveProvider, ReflectiveDependency, ResolvedReflectiveFactory, resolveReflectiveProviders;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'injector.template.dart' as i1;
import 'decorators.template.dart' as i2;
import 'provider.template.dart' as i3;
import 'reflective_exceptions.template.dart' as i4;
import 'reflective_key.template.dart' as i5;
import 'reflective_provider.template.dart' as i6;
export 'reflective_injector.dart';

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
}
