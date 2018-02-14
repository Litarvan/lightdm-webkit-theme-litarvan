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
library browser_adapter.template.dart;

import 'browser_adapter.dart';
import 'dart:html';
import 'dart:js_util' as js_util;
import 'package:angular2/platform/common_dom.dart' show setRootDomAdapter;
import 'package:angular2/src/facade/browser.dart';
import 'package:js/js.dart';
import 'generic_browser_adapter.dart' show GenericBrowserDomAdapter;
import 'package:angular2/platform/common_dom.template.dart' as i0;
import 'package:angular2/src/facade/browser.template.dart' as i1;
import 'generic_browser_adapter.template.dart' as i2;
export 'browser_adapter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
