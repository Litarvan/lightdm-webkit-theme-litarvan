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
import 'ng_switch.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, Host, ViewContainerRef, TemplateRef;
import 'package:angular2/core.template.dart' as i0;
export 'ng_switch.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgSwitch, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [],
() => new NgSwitch())
)
..registerType(NgSwitchWhen, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ViewContainerRef], const <dynamic>[TemplateRef], const <dynamic>[NgSwitch, const Host()]],
(ViewContainerRef viewContainer, TemplateRef templateRef, NgSwitch ngSwitch) => new NgSwitchWhen(viewContainer, templateRef, ngSwitch))
)
..registerType(NgSwitchDefault, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ViewContainerRef], const <dynamic>[TemplateRef], const <dynamic>[NgSwitch, const Host()]],
(ViewContainerRef viewContainer, TemplateRef templateRef, NgSwitch sswitch) => new NgSwitchDefault(viewContainer, templateRef, sswitch))
)
;
i0.initReflector();
}
