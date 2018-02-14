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
import 'find_components.dart';
import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:angular2/src/compiler/compile_metadata.dart';
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/core/change_detection/constants.dart';
import 'package:angular2/src/core/metadata.dart';
import 'package:angular2/src/source_gen/common/annotation_matcher.dart' as annotation_matcher;
import 'package:angular2/src/source_gen/template_compiler/compile_type.dart';
import 'package:angular2/src/source_gen/template_compiler/pipe_visitor.dart';
import 'package:build/build.dart';
import 'package:logging/logging.dart';
import 'dart_object_utils.dart';
import 'package:angular2/src/compiler/compile_metadata.template.dart' as i0;
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i1;
import 'package:angular2/src/core/change_detection/constants.template.dart' as i2;
import 'package:angular2/src/core/metadata.template.dart' as i3;
import 'package:angular2/src/source_gen/common/annotation_matcher.template.dart' as i4;
import 'package:angular2/src/source_gen/template_compiler/compile_type.template.dart' as i5;
import 'package:angular2/src/source_gen/template_compiler/pipe_visitor.template.dart' as i6;
import 'dart_object_utils.template.dart' as i7;
export 'find_components.dart';

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
}
