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
import 'xhr_impl.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async' show Future;
import 'dart:html' show HttpRequest;
import 'package:angular2/di.dart';
import 'package:angular2/src/compiler/xhr.dart';
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/compiler/xhr.template.dart' as i1;
export 'xhr_impl.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(XHRImpl, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new XHRImpl())
)
;
i0.initReflector();
i1.initReflector();
}
