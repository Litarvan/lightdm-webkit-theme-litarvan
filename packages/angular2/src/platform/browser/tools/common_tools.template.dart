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
import 'common_tools.dart';
import 'package:angular2/src/core/application_ref.dart' show ApplicationRef;
import 'package:angular2/src/core/linker/component_factory.dart' show ComponentRef;
import 'package:angular2/src/facade/browser.dart' show window;
import 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM;
import 'package:angular2/src/core/application_ref.template.dart' as i0;
import 'package:angular2/src/core/linker/component_factory.template.dart' as i1;
import 'package:angular2/src/facade/browser.template.dart' as i2;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i3;
export 'common_tools.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
