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
library angular2.transform.reflection_remover.dart.template.dart;

import 'reflection_remover.dart';
import 'dart:async';
import 'package:angular2/src/transform/common/options.dart';
import 'package:angular2/src/transform/common/options_reader.dart';
import 'package:angular2/src/transform/reflection_remover/transformer.dart' as base show ReflectionRemover;
import 'package:barback/barback.dart';
import 'package:angular2/src/transform/common/options.template.dart' as i0;
import 'package:angular2/src/transform/common/options_reader.template.dart' as i1;
import 'package:angular2/src/transform/reflection_remover/transformer.template.dart' as i2;
export 'reflection_remover.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
