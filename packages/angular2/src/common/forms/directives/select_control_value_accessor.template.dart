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
import 'select_control_value_accessor.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:html';
import 'package:angular2/core.dart' show Directive, Provider, ElementRef, Input, Host, OnDestroy, Optional;
import 'package:angular2/src/facade/lang.dart' show isPrimitive, looseIdentical;
import 'control_value_accessor.dart' show NG_VALUE_ACCESSOR, ControlValueAccessor;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'control_value_accessor.template.dart' as i2;
export 'select_control_value_accessor.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(SelectControlValueAccessor, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ElementRef]],
(ElementRef _elementRef) => new SelectControlValueAccessor(_elementRef),
const <dynamic>[ControlValueAccessor])
)
..registerType(NgSelectOption, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ElementRef], const <dynamic>[SelectControlValueAccessor, const Optional(), const Host()]],
(ElementRef _element, SelectControlValueAccessor _select) => new NgSelectOption(_element, _select),
const <dynamic>[OnDestroy])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
