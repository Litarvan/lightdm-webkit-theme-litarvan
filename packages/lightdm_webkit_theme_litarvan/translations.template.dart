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
import 'translations.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i1;
export 'translations.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(Translations, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[LightDM]],
(LightDM _lightdm) => new Translations(_lightdm))
)
;
i0.initReflector();
i1.initReflector();
}
