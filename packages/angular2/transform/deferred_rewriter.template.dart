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
library angular2.transform.deferred_rewriter.dart.template.dart;

import 'deferred_rewriter.dart';
import 'dart:async';
import 'package:angular2/src/transform/deferred_rewriter/transformer.dart' as base show DeferredRewriter;
import 'package:barback/barback.dart';
import 'package:angular2/src/transform/deferred_rewriter/transformer.template.dart' as i0;
export 'deferred_rewriter.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
}
