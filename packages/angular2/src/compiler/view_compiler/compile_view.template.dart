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
import 'compile_view.dart';
import 'package:angular2/src/core/linker/view_type.dart' show ViewType;
import '../compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata, CompileIdentifierMetadata, CompileTokenMap;
import '../config.dart' show CompilerConfig;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import 'compile_binding.dart' show CompileBinding;
import 'compile_element.dart' show CompileElement, CompileNode;
import 'compile_method.dart' show CompileMethod;
import 'compile_pipe.dart' show CompilePipe;
import 'compile_query.dart' show CompileQuery, createQueryList, addQueryToTokenMap;
import 'constants.dart' show EventHandlerVars;
import 'expression_converter.dart' show NameResolver;
import 'view_compiler_utils.dart' show getViewFactoryName, getPropertyInView, createPureProxy;
import 'package:angular2/src/core/linker/view_type.template.dart' as i0;
import '../compile_metadata.template.dart' as i1;
import '../config.template.dart' as i2;
import '../identifiers.template.dart' as i3;
import '../output/output_ast.template.dart' as i4;
import 'compile_binding.template.dart' as i5;
import 'compile_element.template.dart' as i6;
import 'compile_method.template.dart' as i7;
import 'compile_pipe.template.dart' as i8;
import 'compile_query.template.dart' as i9;
import 'constants.template.dart' as i10;
import 'expression_converter.template.dart' as i11;
import 'view_compiler_utils.template.dart' as i12;
export 'compile_view.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
i10.initReflector();
i11.initReflector();
i12.initReflector();
}
