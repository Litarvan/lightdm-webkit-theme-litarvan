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
import 'url_resolver.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/application_tokens.dart' show PACKAGE_ROOT_URL;
import 'package:angular2/src/core/di.dart' show Injectable, Inject, Provider;
import 'package:angular2/src/core/application_tokens.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
export 'url_resolver.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(UrlResolver, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[String, const Inject(PACKAGE_ROOT_URL)]],
(String _packagePrefix) => new UrlResolver(_packagePrefix))
)
;
i0.initReflector();
i1.initReflector();
}
