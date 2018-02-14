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
import 'compile_metadata.dart';
import 'package:angular2/src/compiler/selector.dart' show CssSelector;
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectionStrategy;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks, LIFECYCLE_HOOKS_VALUES;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation, VIEW_ENCAPSULATION_VALUES;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'compiler_utils.dart';
import 'url_resolver.dart' show getUrlScheme;
import 'package:angular2/src/compiler/selector.template.dart' as i0;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i1;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i2;
import 'package:angular2/src/core/metadata/view.template.dart' as i3;
import 'package:angular2/src/facade/exceptions.template.dart' as i4;
import 'compiler_utils.template.dart' as i5;
import 'url_resolver.template.dart' as i6;
export 'compile_metadata.dart';

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
}
