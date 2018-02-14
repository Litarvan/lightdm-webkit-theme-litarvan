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
import 'error_handler.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/di.dart';
import 'package:angular2/src/facade/exception_handler.dart';
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/facade/exception_handler.template.dart' as i1;
export 'error_handler.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(TestExceptionHandler, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new TestExceptionHandler(),
const <dynamic>[ExceptionHandler])
)
;
i0.initReflector();
i1.initReflector();
}
