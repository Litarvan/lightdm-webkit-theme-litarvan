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
import 'xhr_mock.dart';
import 'dart:async';
import 'package:angular2/src/compiler/xhr.dart' show XHR;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/compiler/xhr.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
export 'xhr_mock.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
}
