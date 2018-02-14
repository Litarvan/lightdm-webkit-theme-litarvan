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
import 'template_ast.dart';
import 'package:source_span/source_span.dart';
import '../core/security.dart';
import 'compile_metadata.dart' show CompileDirectiveMetadata, CompileTokenMetadata, CompileProviderMetadata;
import 'expression_parser/ast.dart' show AST;
import '../core/security.template.dart' as i0;
import 'compile_metadata.template.dart' as i1;
import 'expression_parser/ast.template.dart' as i2;
export 'template_ast.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
