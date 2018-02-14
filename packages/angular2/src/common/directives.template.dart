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
import 'directives.dart';
import 'directives/core_directives.template.dart' as i0;
import 'directives/ng_class.template.dart' as i1;
import 'directives/ng_for.template.dart' as i2;
import 'directives/ng_if.template.dart' as i3;
import 'directives/ng_plural.template.dart' as i4;
import 'directives/ng_style.template.dart' as i5;
import 'directives/ng_switch.template.dart' as i6;
import 'directives/ng_template_outlet.template.dart' as i7;
import 'directives/observable_list_diff.template.dart' as i8;
export 'directives.dart';
export 'directives/core_directives.dart' show CORE_DIRECTIVES;
export 'directives/ng_class.dart' show NgClass;
export 'directives/ng_for.dart' show NgFor;
export 'directives/ng_if.dart' show NgIf;
export 'directives/ng_plural.dart' show NgPlural, NgPluralCase, NgLocalization;
export 'directives/ng_style.dart' show NgStyle;
export 'directives/ng_switch.dart' show NgSwitch, NgSwitchWhen, NgSwitchDefault;
export 'directives/ng_template_outlet.dart' show NgTemplateOutlet;
export 'directives/observable_list_diff.dart';

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
}
