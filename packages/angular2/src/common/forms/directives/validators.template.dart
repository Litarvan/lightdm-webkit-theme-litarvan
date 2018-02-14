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
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart' show Provider, Attribute, Directive;
import '../model.dart' show AbstractControl;
import '../validators.dart' show Validators, NG_VALIDATORS;
import 'package:angular2/core.template.dart' as i0;
import '../model.template.dart' as i1;
import '../validators.template.dart' as i2;
export 'validators.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RequiredValidator, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [],
() => new RequiredValidator())
)
..registerType(MinLengthValidator, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[String, const Attribute("minlength")]],
(String minLength) => new MinLengthValidator(minLength),
const <dynamic>[Validator])
)
..registerType(MaxLengthValidator, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[String, const Attribute("maxlength")]],
(String maxLength) => new MaxLengthValidator(maxLength),
const <dynamic>[Validator])
)
..registerType(PatternValidator, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[String, const Attribute("pattern")]],
(String pattern) => new PatternValidator(pattern),
const <dynamic>[Validator])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
