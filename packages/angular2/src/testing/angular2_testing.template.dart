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
library angular2_testing.angular2_testing.template.dart;

import 'angular2_testing.dart';
import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular2/platform/testing/browser.dart';
import 'package:angular2/src/core/di/reflective_exceptions.dart' show NoAnnotationError;
import 'package:angular2/src/core/reflection/reflection.dart';
import 'package:angular2/src/testing/internal.dart' show TestComponentBuilder, ComponentFixture, setBaseTestProviders, getTestInjector, inject;
import 'package:test/test.dart';
import 'internal_injector.dart';
import 'package:angular2/angular2.template.dart' as i0;
import 'package:angular2/platform/testing/browser.template.dart' as i1;
import 'package:angular2/src/core/di/reflective_exceptions.template.dart' as i2;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i3;
import 'package:angular2/src/testing/internal.template.dart' as i4;
import 'internal_injector.template.dart' as i5;
export 'angular2_testing.dart';
export 'package:angular2/src/testing/internal.dart' show TestComponentBuilder, ComponentFixture, setBaseTestProviders, getTestInjector, inject;

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
