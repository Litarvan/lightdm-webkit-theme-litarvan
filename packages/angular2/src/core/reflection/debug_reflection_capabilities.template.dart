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
import 'debug_reflection_capabilities.dart';
import 'dart:mirrors';
import 'package:logging/logging.dart' as log;
import 'package:stack_trace/stack_trace.dart';
import 'reflection_capabilities.dart' as standard;
import 'types.dart';
import 'reflection_capabilities.template.dart' as i0;
import 'types.template.dart' as i1;
export 'debug_reflection_capabilities.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
