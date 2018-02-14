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
import 'observable_list_diff.dart';
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/src/core/change_detection/differs/default_iterable_differ.dart';
import 'package:observable/observable.dart' show ObservableList;
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2/src/core/change_detection/differs/default_iterable_differ.template.dart' as i1;
export 'observable_list_diff.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
