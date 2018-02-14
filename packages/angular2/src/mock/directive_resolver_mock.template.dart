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
import 'directive_resolver_mock.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/directive_resolver.dart' show DirectiveResolver;
import 'package:angular2/src/core/di.dart' show Injectable;
import '../core/metadata.dart' show Directive, Component;
import 'package:angular2/src/compiler/directive_resolver.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import '../core/metadata.template.dart' as i2;
export 'directive_resolver_mock.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(MockDirectiveResolver, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new MockDirectiveResolver())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
