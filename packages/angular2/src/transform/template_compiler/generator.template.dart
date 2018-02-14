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
import 'package:angular2/src/compiler/config.dart';
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/facade/lang.dart';
import 'package:angular2/src/transform/common/asset_reader.dart';
import 'package:angular2/src/transform/common/logging.dart';
import 'package:angular2/src/transform/common/model/annotation_model.pb.dart';
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.dart';
import 'package:angular2/src/transform/common/names.dart';
import 'package:angular2/src/transform/common/ng_compiler.dart';
import 'package:angular2/src/transform/common/options.dart' show CODEGEN_DEBUG_MODE;
import 'package:angular2/src/transform/common/zone.dart' as zone;
import 'package:barback/barback.dart';
import 'compile_data_creator.dart';
import 'package:angular2/src/compiler/config.template.dart' as i0;
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i1;
import 'package:angular2/src/facade/lang.template.dart' as i2;
import 'package:angular2/src/transform/common/asset_reader.template.dart' as i3;
import 'package:angular2/src/transform/common/logging.template.dart' as i4;
import 'package:angular2/src/transform/common/model/annotation_model.pb.template.dart' as i5;
import 'package:angular2/src/transform/common/model/ng_deps_model.pb.template.dart' as i6;
import 'package:angular2/src/transform/common/names.template.dart' as i7;
import 'package:angular2/src/transform/common/ng_compiler.template.dart' as i8;
import 'package:angular2/src/transform/common/options.template.dart' as i9;
import 'package:angular2/src/transform/common/zone.template.dart' as i10;
import 'compile_data_creator.template.dart' as i11;
export 'generator.dart';

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
}
