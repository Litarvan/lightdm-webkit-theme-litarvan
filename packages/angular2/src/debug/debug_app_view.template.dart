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
import 'debug_app_view.dart';
import 'dart:html';
import 'dart:convert';
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectionStrategy, ChangeDetectorState;
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/linker/exceptions.dart' show ExpressionChangedAfterItHasBeenCheckedException, ViewWrappedException;
import 'package:angular2/src/core/linker/view_type.dart';
import 'package:angular2/src/core/profile/profile.dart' show wtfCreateScope, wtfLeave, WtfScopeFn;
import 'package:angular2/src/core/render/api.dart' show RenderComponentType;
import 'package:angular2/src/debug/debug_context.dart' show StaticNodeDebugInfo, DebugContext;
import 'package:angular2/src/debug/debug_node.dart' show DebugElement, DebugNode, getDebugNode, indexDebugNode, DebugEventListener, removeDebugNodeFromIndex;
import 'package:angular2/src/debug/debug_node.dart' show inspectNativeElement;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/render/api.template.dart' as i2;
import 'package:angular2/src/core/linker/view_container.template.dart' as i3;
import 'package:angular2/src/core/linker/app_view.template.dart' as i4;
import 'package:angular2/src/core/linker/exceptions.template.dart' as i5;
import 'package:angular2/src/core/linker/view_type.template.dart' as i6;
import 'package:angular2/src/core/profile/profile.template.dart' as i7;
import 'package:angular2/src/debug/debug_context.template.dart' as i8;
import 'package:angular2/src/debug/debug_node.template.dart' as i9;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i10;
export 'debug_app_view.dart';
export 'package:angular2/src/core/linker/app_view.dart';
export 'package:angular2/src/debug/debug_context.dart' show StaticNodeDebugInfo, DebugContext;

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
}
