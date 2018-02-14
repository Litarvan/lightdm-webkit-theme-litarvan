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
import 'expression_converter.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../chars.dart';
import '../expression_parser/ast.dart' as compiler_ast;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import '../chars.template.dart' as i1;
import '../expression_parser/ast.template.dart' as i2;
import '../identifiers.template.dart' as i3;
import '../output/output_ast.template.dart' as i4;
export 'expression_converter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
