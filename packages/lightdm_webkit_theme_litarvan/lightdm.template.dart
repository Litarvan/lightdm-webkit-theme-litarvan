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
import 'lightdm.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:js';
import 'package:angular2/core.dart';
import 'package:js/js.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/desktop.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/user.template.dart' as i2;
export 'lightdm.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(LightDM, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new LightDM())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
