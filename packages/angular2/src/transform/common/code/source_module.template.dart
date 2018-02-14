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
import 'source_module.dart';
import 'package:analyzer/dart/ast/token.dart' show Keyword;
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.dart';
import 'ng_deps_code.dart';
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i0;
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.template.dart' as i1;
import 'ng_deps_code.template.dart' as i2;
export 'source_module.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
