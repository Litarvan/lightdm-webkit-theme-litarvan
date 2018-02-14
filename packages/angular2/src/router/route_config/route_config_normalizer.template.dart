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
import 'route_config_normalizer.dart';
import 'dart:async';
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart';
import '../route_definition.dart';
import '../route_registry.dart';
import 'route_config_decorator.dart';
import 'package:angular2/src/facade/exceptions.template.dart' as i0;
import 'package:angular2/src/facade/lang.template.dart' as i1;
import '../route_definition.template.dart' as i2;
import '../route_registry.template.dart' as i3;
import 'route_config_decorator.template.dart' as i4;
export 'route_config_normalizer.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
