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
library angular2.template.dart;

import 'angular2.dart';
import 'dart:html';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/common.template.dart' as i1;
import 'package:angular2/instrumentation.template.dart' as i2;
import 'package:angular2/src/core/angular_entrypoint.template.dart' as i3;
import 'package:angular2/src/core/application_tokens.template.dart' as i4;
import 'package:angular2/src/platform/dom/dom_tokens.template.dart' as i5;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i6;
import 'package:angular2/src/platform/dom/events/event_manager.template.dart' as i7;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i8;
import 'package:angular2/src/compiler/directive_resolver.template.dart' as i9;
import 'package:angular2/src/compiler/view_resolver.template.dart' as i10;
export 'angular2.dart';
export 'package:angular2/core.dart';
export 'package:angular2/common.dart';
export 'package:angular2/instrumentation.dart';
export 'package:angular2/src/core/angular_entrypoint.dart' show AngularEntrypoint;
export 'package:angular2/src/core/application_tokens.dart' hide APP_ID_RANDOM_PROVIDER;
export 'package:angular2/src/platform/dom/dom_tokens.dart';
export 'package:angular2/src/platform/dom/dom_adapter.dart';
export 'package:angular2/src/platform/dom/events/event_manager.dart';
export 'package:angular2/src/compiler/url_resolver.dart';
export 'package:angular2/src/compiler/directive_resolver.dart';
export 'package:angular2/src/compiler/view_resolver.dart';

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
