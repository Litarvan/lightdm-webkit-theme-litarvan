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
import 'rewriter.dart';
import 'dart:async';
import 'package:analyzer/analyzer.dart';
import 'package:angular2/src/compiler/compile_metadata.dart' show CompileIdentifierMetadata;
import 'package:angular2/src/compiler/offline_compiler.dart';
import 'package:angular2/src/transform/common/annotation_matcher.dart';
import 'package:angular2/src/transform/common/asset_reader.dart';
import 'package:angular2/src/transform/common/code/ng_deps_code.dart';
import 'package:angular2/src/transform/common/interface_matcher.dart';
import 'package:angular2/src/transform/common/logging.dart';
import 'package:angular2/src/transform/common/ng_compiler.dart';
import 'package:angular2/src/transform/common/ng_meta.dart';
import 'package:angular2/src/transform/common/options.dart';
import 'package:angular2/src/transform/common/type_metadata_reader.dart';
import 'package:angular2/src/transform/common/url_resolver.dart';
import 'package:angular2/src/transform/common/zone.dart' as zone;
import 'package:barback/barback.dart' show AssetId;
import 'deferred_import_validator.dart';
import 'inliner.dart';
import 'package:angular2/src/compiler/compile_metadata.template.dart' as i0;
import 'package:angular2/src/compiler/offline_compiler.template.dart' as i1;
import 'package:angular2/src/transform/common/annotation_matcher.template.dart' as i2;
import 'package:angular2/src/transform/common/asset_reader.template.dart' as i3;
import 'package:angular2/src/transform/common/code/ng_deps_code.template.dart' as i4;
import 'package:angular2/src/transform/common/interface_matcher.template.dart' as i5;
import 'package:angular2/src/transform/common/logging.template.dart' as i6;
import 'package:angular2/src/transform/common/ng_compiler.template.dart' as i7;
import 'package:angular2/src/transform/common/ng_meta.template.dart' as i8;
import 'package:angular2/src/transform/common/options.template.dart' as i9;
import 'package:angular2/src/transform/common/type_metadata_reader.template.dart' as i10;
import 'package:angular2/src/transform/common/url_resolver.template.dart' as i11;
import 'package:angular2/src/transform/common/zone.template.dart' as i12;
import 'deferred_import_validator.template.dart' as i13;
import 'inliner.template.dart' as i14;
export 'rewriter.dart';

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
}
