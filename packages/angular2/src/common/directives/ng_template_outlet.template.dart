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
import 'ng_template_outlet.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart' show Directive, Input, ViewContainerRef, ViewRef, TemplateRef;
import 'package:angular2/core.template.dart' as i0;
export 'ng_template_outlet.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NgTemplateOutlet, new _ngRef.ReflectionInfo(
const <dynamic>[],
const [const <dynamic>[ViewContainerRef]],
(ViewContainerRef _viewContainerRef) => new NgTemplateOutlet(_viewContainerRef))
)
;
i0.initReflector();
}
