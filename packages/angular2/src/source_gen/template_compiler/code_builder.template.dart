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
import 'code_builder.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:angular2/src/source_gen/common/namespace_model.dart';
import 'package:angular2/src/source_gen/common/ng_deps_model.dart';
import 'package:angular2/src/source_gen/template_compiler/template_compiler_outputs.dart';
import 'package:angular2/src/transform/common/names.dart';
import 'package:code_builder/code_builder.dart';
import 'package:quiver/strings.dart' as strings;
import 'package:angular2/src/source_gen/common/namespace_model.template.dart' as i0;
import 'package:angular2/src/source_gen/common/ng_deps_model.template.dart' as i1;
import 'package:angular2/src/source_gen/template_compiler/template_compiler_outputs.template.dart' as i2;
import 'package:angular2/src/transform/common/names.template.dart' as i3;
export 'code_builder.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
