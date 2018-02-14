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
import 'compiler.dart';
import 'package:angular2/src/compiler/directive_normalizer.dart' show DirectiveNormalizer;
import 'package:angular2/src/compiler/html_parser.dart' show HtmlParser;
import 'package:angular2/src/compiler/runtime_metadata.dart' show RuntimeMetadataResolver;
import 'package:angular2/src/compiler/schema/dom_element_schema_registry.dart' show DomElementSchemaRegistry;
import 'package:angular2/src/compiler/schema/element_schema_registry.dart' show ElementSchemaRegistry;
import 'package:angular2/src/compiler/style_compiler.dart' show StyleCompiler;
import 'package:angular2/src/compiler/template_parser.dart' show TemplateParser;
import 'package:angular2/src/compiler/url_resolver.dart' show UrlResolver, DEFAULT_PACKAGE_URL_PROVIDER;
import 'package:angular2/src/compiler/view_compiler/view_compiler.dart' show ViewCompiler;
import 'package:angular2/src/core/di.dart' show Provider;
import 'package:angular2/src/facade/lang.dart' show assertionsEnabled;
import 'config.dart' show CompilerConfig;
import 'directive_resolver.dart' show DirectiveResolver;
import 'expression_parser/lexer.dart' show Lexer;
import 'expression_parser/parser.dart' show Parser;
import 'pipe_resolver.dart' show PipeResolver;
import 'view_resolver.dart' show ViewResolver;
import 'package:angular2/src/compiler/directive_normalizer.template.dart' as i0;
import 'package:angular2/src/compiler/html_parser.template.dart' as i1;
import 'package:angular2/src/compiler/runtime_metadata.template.dart' as i2;
import 'package:angular2/src/compiler/schema/dom_element_schema_registry.template.dart' as i3;
import 'package:angular2/src/compiler/schema/element_schema_registry.template.dart' as i4;
import 'package:angular2/src/compiler/style_compiler.template.dart' as i5;
import 'package:angular2/src/compiler/template_parser.template.dart' as i6;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i7;
import 'package:angular2/src/compiler/view_compiler/view_compiler.template.dart' as i8;
import 'package:angular2/src/core/di.template.dart' as i9;
import 'package:angular2/src/facade/lang.template.dart' as i10;
import 'config.template.dart' as i11;
import 'directive_resolver.template.dart' as i12;
import 'expression_parser/lexer.template.dart' as i13;
import 'expression_parser/parser.template.dart' as i14;
import 'pipe_resolver.template.dart' as i15;
import 'view_resolver.template.dart' as i16;
import 'package:angular2/src/compiler/template_ast.template.dart' as i17;
import 'package:angular2/src/compiler/xhr.template.dart' as i18;
import 'package:angular2/src/core/platform_directives_and_pipes.template.dart' as i19;
import 'compile_metadata.template.dart' as i20;
import 'offline_compiler.template.dart' as i21;
export 'compiler.dart';
export 'package:angular2/src/compiler/template_ast.dart';
export 'package:angular2/src/compiler/url_resolver.dart';
export 'package:angular2/src/compiler/xhr.dart';
export 'package:angular2/src/core/platform_directives_and_pipes.dart' show PLATFORM_DIRECTIVES, PLATFORM_PIPES;
export 'compile_metadata.dart';
export 'config.dart' show CompilerConfig;
export 'directive_resolver.dart' show DirectiveResolver;
export 'offline_compiler.dart';
export 'pipe_resolver.dart' show PipeResolver;
export 'view_resolver.dart' show ViewResolver;

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
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
i19.initReflector();
i20.initReflector();
i21.initReflector();
}
