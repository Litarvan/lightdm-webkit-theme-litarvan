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
import 'main.dart';
import 'package:angular2/platform/browser_static.dart';
import 'package:lightdm_webkit_theme_litarvan/components/app/app_component.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';
import 'package:angular2/platform/browser_static.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/components/app/app_component.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/greeter_service.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i3;
import 'package:lightdm_webkit_theme_litarvan/translations.template.dart' as i4;
export 'main.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
