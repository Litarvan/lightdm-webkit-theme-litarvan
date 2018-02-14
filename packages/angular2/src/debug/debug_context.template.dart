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
import 'debug_context.dart';
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/linker/view_type.dart';
import 'package:angular2/src/core/render/api.dart' show RenderDebugInfo;
import 'package:angular2/src/debug/debug_app_view.dart';
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/linker/view_type.template.dart' as i1;
import 'package:angular2/src/core/render/api.template.dart' as i2;
import 'package:angular2/src/debug/debug_app_view.template.dart' as i3;
export 'debug_context.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
