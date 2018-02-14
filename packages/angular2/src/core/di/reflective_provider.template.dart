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
import 'reflective_provider.dart';
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import '../metadata.dart';
import 'decorators.dart';
import 'provider.dart' show Provider, provide, noValueProvided;
import 'reflective_exceptions.dart' show NoAnnotationError, MixingMultiProvidersWithRegularProvidersError, InvalidProviderError;
import 'reflective_key.dart';
import 'package:angular2/src/core/reflection/reflection.template.dart' as i0;
import '../metadata.template.dart' as i1;
import 'decorators.template.dart' as i2;
import 'provider.template.dart' as i3;
import 'reflective_exceptions.template.dart' as i4;
import 'reflective_key.template.dart' as i5;
export 'reflective_provider.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
