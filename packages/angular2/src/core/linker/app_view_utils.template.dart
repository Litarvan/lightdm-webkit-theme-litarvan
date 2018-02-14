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
import 'app_view_utils.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/di.dart' show Injectable, Inject;
import 'package:angular2/src/core/application_tokens.dart' show APP_ID;
import 'package:angular2/src/core/change_detection/change_detection.dart' show devModeEqual, uninitialized;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import 'package:angular2/src/core/render/api.dart' show RenderComponentType;
import 'package:angular2/src/core/security.dart' show SafeValue;
import 'package:angular2/src/core/security.dart';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show looseIdentical;
import 'package:angular2/src/platform/dom/events/event_manager.dart' show EventManager;
import 'exceptions.dart' show ExpressionChangedAfterItHasBeenCheckedException;
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/core/application_tokens.template.dart' as i1;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i2;
import 'package:angular2/src/core/metadata/view.template.dart' as i3;
import 'package:angular2/src/core/render/api.template.dart' as i4;
import 'package:angular2/src/core/security.template.dart' as i5;
import 'package:angular2/src/facade/exceptions.template.dart' as i6;
import 'package:angular2/src/facade/lang.template.dart' as i7;
import 'package:angular2/src/platform/dom/events/event_manager.template.dart' as i8;
import 'exceptions.template.dart' as i9;
export 'app_view_utils.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AppViewUtils, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[String, const Inject(APP_ID)], const <dynamic>[SanitizationService], const <dynamic>[EventManager]],
(String _appId, SanitizationService sanitizer, EventManager eventManager) => new AppViewUtils(_appId, sanitizer, eventManager))
)
;
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
}
