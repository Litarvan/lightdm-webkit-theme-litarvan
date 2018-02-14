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
import 'ng_test_bootstrap.dart';
import 'dart:async';
import 'dart:html';
import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser_static.dart';
import 'package:angular2/src/core/application_ref.dart';
import 'package:angular2/src/core/linker/app_view_utils.dart';
import 'package:angular2/src/facade/exception_handler.dart';
import 'error_handler.dart';
import 'package:angular2/angular2.template.dart' as i0;
import 'package:angular2/platform/browser_static.template.dart' as i1;
import 'package:angular2/src/core/application_ref.template.dart' as i2;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i3;
import 'package:angular2/src/facade/exception_handler.template.dart' as i4;
import 'error_handler.template.dart' as i5;
export 'ng_test_bootstrap.dart';

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
