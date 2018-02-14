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
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:angular2/src/transform/common/logging.dart';
import 'package:angular2/src/transform/common/mirror_matcher.dart';
import 'package:angular2/src/transform/common/mirror_mode.dart';
import 'package:angular2/src/transform/common/names.dart';
import 'package:path/path.dart' as path;
import 'codegen.dart';
import 'entrypoint_matcher.dart';
import 'package:angular2/src/transform/common/logging.template.dart' as i0;
import 'package:angular2/src/transform/common/mirror_matcher.template.dart' as i1;
import 'package:angular2/src/transform/common/mirror_mode.template.dart' as i2;
import 'package:angular2/src/transform/common/names.template.dart' as i3;
import 'codegen.template.dart' as i4;
import 'entrypoint_matcher.template.dart' as i5;
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
}
