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
import 'output_interpreter.dart';
import 'dart:html';
import 'package:angular2/src/compiler/identifiers.dart';
import 'package:angular2/src/core/linker.dart' show QueryList;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/linker/app_view_utils.dart';
import 'package:angular2/src/core/linker/component_factory.dart';
import 'package:angular2/src/core/linker/template_ref.dart';
import 'package:angular2/src/core/linker/view_container_ref.dart' show ViewContainerRef;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/debug/debug_app_view.dart';
import 'package:angular2/src/debug/debug_context.dart' show StaticNodeDebugInfo, DebugContext;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'dart_emitter.dart' show debugOutputAstAsDart;
import 'dynamic_instance.dart';
import 'output_ast.dart' as o;
import 'package:angular2/src/compiler/identifiers.template.dart' as i0;
import 'package:angular2/src/core/linker.template.dart' as i1;
import 'package:angular2/src/core/linker/view_container.template.dart' as i2;
import 'package:angular2/src/core/linker/app_view.template.dart' as i3;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i4;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i5;
import 'package:angular2/src/core/linker/template_ref.template.dart' as i6;
import 'package:angular2/src/core/linker/view_container_ref.template.dart' as i7;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i8;
import 'package:angular2/src/debug/debug_app_view.template.dart' as i9;
import 'package:angular2/src/debug/debug_context.template.dart' as i10;
import 'package:angular2/src/facade/exceptions.template.dart' as i11;
import 'dart_emitter.template.dart' as i12;
import 'dynamic_instance.template.dart' as i13;
import 'output_ast.template.dart' as i14;
export 'output_interpreter.dart';

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
