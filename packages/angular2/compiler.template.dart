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
library angular2.compiler.template.dart;

import 'compiler.dart';
import 'package:angular2/src/compiler/compiler.template.dart' as i0;
import 'package:angular2/src/compiler/template_ast.template.dart' as i1;
export 'compiler.dart';
export 'package:angular2/src/compiler/compiler.dart' show PLATFORM_DIRECTIVES, PLATFORM_PIPES, COMPILER_PROVIDERS, CompilerConfig, UrlResolver, DEFAULT_PACKAGE_URL_PROVIDER, createOfflineCompileUrlResolver, XHR, ViewResolver, DirectiveResolver, PipeResolver, SourceModule, NormalizedComponentWithViewDirectives, OfflineCompiler, CompileMetadataWithIdentifier, CompileMetadataWithType, CompileIdentifierMetadata, CompileDiDependencyMetadata, CompileProviderMetadata, CompileFactoryMetadata, CompileTokenMetadata, CompileTypeMetadata, CompileQueryMetadata, CompileTemplateMetadata, CompileDirectiveMetadata, CompilePipeMetadata;
export 'package:angular2/src/compiler/template_ast.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
