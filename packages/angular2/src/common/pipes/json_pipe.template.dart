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
import 'json_pipe.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/di.dart' show Injectable, PipeTransform, Pipe;
import 'package:angular2/src/facade/lang.dart' show Json;
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
export 'json_pipe.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(JsonPipe, new _ngRef.ReflectionInfo(
const <dynamic>[const Pipe(name: "json", pure: false), const Injectable()],
const [],
() => new JsonPipe(),
const <dynamic>[PipeTransform])
)
;
i0.initReflector();
i1.initReflector();
}
