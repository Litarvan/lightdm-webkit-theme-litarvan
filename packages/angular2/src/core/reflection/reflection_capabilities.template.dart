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
import 'reflection_capabilities.dart';
import 'dart:mirrors';
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart';
import 'package:angular2/src/facade/lang.dart';
import 'platform_reflection_capabilities.dart';
import 'types.dart';
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import 'platform_reflection_capabilities.template.dart' as i2;
import 'types.template.dart' as i3;
export 'reflection_capabilities.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
