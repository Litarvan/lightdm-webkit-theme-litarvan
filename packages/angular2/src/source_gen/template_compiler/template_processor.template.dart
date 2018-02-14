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
import 'template_processor.dart';
import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:angular2/src/compiler/config.dart';
import 'package:angular2/src/source_gen/common/logging.dart';
import 'package:angular2/src/source_gen/common/ng_compiler.dart';
import 'package:angular2/src/source_gen/template_compiler/find_components.dart';
import 'package:angular2/src/source_gen/template_compiler/ng_deps_visitor.dart';
import 'package:angular2/src/source_gen/template_compiler/template_compiler_outputs.dart';
import 'package:angular2/src/transform/common/options.dart';
import 'package:build/build.dart';
import 'package:angular2/src/compiler/config.template.dart' as i0;
import 'package:angular2/src/source_gen/common/logging.template.dart' as i1;
import 'package:angular2/src/source_gen/common/ng_compiler.template.dart' as i2;
import 'package:angular2/src/source_gen/template_compiler/find_components.template.dart' as i3;
import 'package:angular2/src/source_gen/template_compiler/ng_deps_visitor.template.dart' as i4;
import 'package:angular2/src/source_gen/template_compiler/template_compiler_outputs.template.dart' as i5;
import 'package:angular2/src/transform/common/options.template.dart' as i6;
export 'template_processor.dart';

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
}
