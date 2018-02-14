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
import 'interpretive_view.dart';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'package:angular2/src/debug/debug_context.dart' show StaticNodeDebugInfo;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'dynamic_instance.dart';
import 'package:angular2/src/core/linker/view_container.template.dart' as i0;
import 'package:angular2/src/core/linker/app_view.template.dart' as i1;
import 'package:angular2/src/debug/debug_app_view.template.dart' as i2;
import 'package:angular2/src/debug/debug_context.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
import 'dynamic_instance.template.dart' as i5;
export 'interpretive_view.dart';

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
