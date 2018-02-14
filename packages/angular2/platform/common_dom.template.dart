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
library angular2.platform.common_dom.template.dart;

import 'common_dom.dart';
import 'package:angular2/src/core/render/api.template.dart' as i0;
import 'package:angular2/src/platform/dom/dom_adapter.template.dart' as i1;
import 'package:angular2/src/platform/dom/dom_tokens.template.dart' as i2;
import 'package:angular2/src/platform/dom/events/dom_events.template.dart' as i3;
import 'package:angular2/src/platform/dom/events/event_manager.template.dart' as i4;
export 'common_dom.dart';
export 'package:angular2/src/core/render/api.dart' show sharedStylesHost;
export 'package:angular2/src/platform/dom/dom_adapter.dart' show DOM, setRootDomAdapter, DomAdapter;
export 'package:angular2/src/platform/dom/dom_tokens.dart' show DOCUMENT;
export 'package:angular2/src/platform/dom/events/dom_events.dart' show DomEventsPlugin;
export 'package:angular2/src/platform/dom/events/event_manager.dart' show EVENT_MANAGER_PLUGINS, EventManager, EventManagerPlugin;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
