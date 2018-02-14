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
import 'ng_meta.dart';
import 'package:angular2/src/compiler/compile_metadata.dart';
import 'logging.dart';
import 'model/ng_deps_model.pb.dart';
import 'url_resolver.dart' show isDartCoreUri;
import 'package:angular2/src/compiler/compile_metadata.template.dart' as i0;
import 'logging.template.dart' as i1;
import 'model/ng_deps_model.pb.template.dart' as i2;
import 'url_resolver.template.dart' as i3;
export 'ng_meta.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
