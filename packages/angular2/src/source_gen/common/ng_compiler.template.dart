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
import 'ng_compiler.dart';
import 'package:angular2/src/compiler/config.dart';
import 'package:angular2/src/compiler/directive_normalizer.dart';
import 'package:angular2/src/compiler/expression_parser/lexer.dart' as ng;
import 'package:angular2/src/compiler/expression_parser/parser.dart' as ng;
import 'package:angular2/src/compiler/html_parser.dart';
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/compiler/output/dart_emitter.dart';
import 'package:angular2/src/compiler/schema/dom_element_schema_registry.dart';
import 'package:angular2/src/compiler/style_compiler.dart';
import 'package:angular2/src/compiler/template_parser.dart';
import 'package:angular2/src/compiler/url_resolver.dart';
import 'package:angular2/src/compiler/view_compiler/view_compiler.dart';
import 'package:angular2/src/source_gen/common/xhr_impl.dart';
import 'package:build/build.dart';
import 'package:angular2/src/compiler/config.template.dart' as i0;
import 'package:angular2/src/compiler/directive_normalizer.template.dart' as i1;
import 'package:angular2/src/compiler/expression_parser/lexer.template.dart' as i2;
import 'package:angular2/src/compiler/expression_parser/parser.template.dart' as i3;
import 'package:angular2/src/compiler/html_parser.template.dart' as i4;
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i5;
import 'package:angular2/src/compiler/output/dart_emitter.template.dart' as i6;
import 'package:angular2/src/compiler/schema/dom_element_schema_registry.template.dart' as i7;
import 'package:angular2/src/compiler/style_compiler.template.dart' as i8;
import 'package:angular2/src/compiler/template_parser.template.dart' as i9;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i10;
import 'package:angular2/src/compiler/view_compiler/view_compiler.template.dart' as i11;
import 'package:angular2/src/source_gen/common/xhr_impl.template.dart' as i12;
export 'ng_compiler.dart';

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
