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
import 'offline_compiler.dart';
import 'dart:async';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'compile_metadata.dart' show CompileDirectiveMetadata, CompilePipeMetadata, createHostComponentMeta, CompileTypeMetadata;
import 'compiler_utils.dart' show MODULE_SUFFIX;
import 'directive_normalizer.dart' show DirectiveNormalizer;
import 'identifiers.dart';
import 'output/abstract_emitter.dart' show OutputEmitter;
import 'output/output_ast.dart' as o;
import 'style_compiler.dart' show StyleCompiler, StylesCompileResult;
import 'template_parser.dart' show TemplateParser;
import 'view_compiler/view_compiler.dart' show ViewCompiler, ViewCompileResult;
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'compile_metadata.template.dart' as i1;
import 'compiler_utils.template.dart' as i2;
import 'directive_normalizer.template.dart' as i3;
import 'identifiers.template.dart' as i4;
import 'output/abstract_emitter.template.dart' as i5;
import 'output/output_ast.template.dart' as i6;
import 'style_compiler.template.dart' as i7;
import 'template_parser.template.dart' as i8;
import 'view_compiler/view_compiler.template.dart' as i9;
export 'offline_compiler.dart';

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
}
