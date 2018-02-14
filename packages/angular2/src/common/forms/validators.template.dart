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
import 'validators.dart';
import 'dart:async';
import 'package:angular2/di.dart' show OpaqueToken;
import 'directives/validators.dart' show ValidatorFn, AsyncValidatorFn;
import 'model.dart' as model_module;
import 'package:angular2/di.template.dart' as i0;
import 'directives/validators.template.dart' as i1;
import 'model.template.dart' as i2;
export 'validators.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
