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
library angular2.src.transform.common.model.proto_ng_deps_model.template.dart;

import 'ng_deps_model.pb.dart';
import 'package:protobuf/protobuf.dart';
import 'import_export_model.pb.dart';
import 'reflection_info_model.pb.dart';
import 'import_export_model.pb.template.dart' as i0;
import 'reflection_info_model.pb.template.dart' as i1;
export 'ng_deps_model.pb.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
