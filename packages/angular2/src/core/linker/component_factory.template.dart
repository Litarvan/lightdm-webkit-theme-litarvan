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
import 'component_factory.dart';
import 'dart:html';
import 'package:angular2/src/core/di.dart' show Injector;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import '../change_detection/change_detection.dart' show ChangeDetectorRef;
import 'view_container.dart';
import 'app_view.dart';
import 'app_view_utils.dart' show OnDestroyCallback;
import 'element_ref.dart' show ElementRef;
import 'view_ref.dart' show ViewRef;
import 'package:angular2/src/core/di.template.dart' as i0;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i1;
import '../change_detection/change_detection.template.dart' as i2;
import 'view_container.template.dart' as i3;
import 'app_view.template.dart' as i4;
import 'app_view_utils.template.dart' as i5;
import 'element_ref.template.dart' as i6;
import 'view_ref.template.dart' as i7;
export 'component_factory.dart';

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
}
