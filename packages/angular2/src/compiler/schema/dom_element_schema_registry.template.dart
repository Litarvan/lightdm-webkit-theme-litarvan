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
import 'dom_element_schema_registry.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/di.dart' show Injectable;
import 'package:angular2/src/core/security.dart';
import 'element_schema_registry.dart' show ElementSchemaRegistry;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/security.template.dart' as i1;
import 'element_schema_registry.template.dart' as i2;
export 'dom_element_schema_registry.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DomElementSchemaRegistry, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new DomElementSchemaRegistry())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
