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
import 'compile_pipe.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import '../compile_metadata.dart' show CompilePipeMetadata;
import '../identifiers.dart' show Identifiers, identifierToken;
import '../output/output_ast.dart' as o;
import 'compile_view.dart' show CompileView;
import 'view_compiler_utils.dart' show injectFromViewParentInjector, createPureProxy, getPropertyInView;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
import '../identifiers.template.dart' as i2;
import '../output/output_ast.template.dart' as i3;
import 'compile_view.template.dart' as i4;
import 'view_compiler_utils.template.dart' as i5;
export 'compile_pipe.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
