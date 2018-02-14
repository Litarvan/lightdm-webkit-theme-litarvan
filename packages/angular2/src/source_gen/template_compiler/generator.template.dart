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
import 'generator.dart';
import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:angular2/src/source_gen/common/url_resolver.dart';
import 'package:angular2/src/source_gen/template_compiler/code_builder.dart';
import 'package:angular2/src/source_gen/template_compiler/template_processor.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:source_gen/source_gen.dart';
import 'package:angular2/src/source_gen/common/url_resolver.template.dart' as i0;
import 'package:angular2/src/source_gen/template_compiler/code_builder.template.dart' as i1;
import 'package:angular2/src/source_gen/template_compiler/template_processor.template.dart' as i2;
export 'generator.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
