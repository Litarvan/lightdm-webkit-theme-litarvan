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
library angular2.transform.codegen.dart.template.dart;

import 'codegen.dart';
import 'package:angular2/src/transform/asset_consumer/transformer.dart';
import 'package:angular2/src/transform/common/eager_transformer_wrapper.dart';
import 'package:angular2/src/transform/common/formatter.dart' as formatter;
import 'package:angular2/src/transform/common/options.dart';
import 'package:angular2/src/transform/common/options_reader.dart';
import 'package:angular2/src/transform/directive_metadata_linker/transformer.dart';
import 'package:angular2/src/transform/directive_processor/transformer.dart';
import 'package:angular2/src/transform/inliner_for_test/transformer.dart';
import 'package:angular2/src/transform/stylesheet_compiler/transformer.dart';
import 'package:angular2/src/transform/template_compiler/transformer.dart';
import 'package:barback/barback.dart';
import 'package:dart_style/dart_style.dart';
import 'package:angular2/src/transform/asset_consumer/transformer.template.dart' as i0;
import 'package:angular2/src/transform/common/eager_transformer_wrapper.template.dart' as i1;
import 'package:angular2/src/transform/common/formatter.template.dart' as i2;
import 'package:angular2/src/transform/common/options.template.dart' as i3;
import 'package:angular2/src/transform/common/options_reader.template.dart' as i4;
import 'package:angular2/src/transform/directive_metadata_linker/transformer.template.dart' as i5;
import 'package:angular2/src/transform/directive_processor/transformer.template.dart' as i6;
import 'package:angular2/src/transform/inliner_for_test/transformer.template.dart' as i7;
import 'package:angular2/src/transform/stylesheet_compiler/transformer.template.dart' as i8;
import 'package:angular2/src/transform/template_compiler/transformer.template.dart' as i9;
export 'codegen.dart';
export 'package:angular2/src/transform/common/options.dart';

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
