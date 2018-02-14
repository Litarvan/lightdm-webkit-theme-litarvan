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
import 'options_reader.dart';
import 'dart:io';
import 'package:barback/barback.dart';
import './url_resolver.dart';
import 'annotation_matcher.dart';
import 'mirror_mode.dart';
import 'options.dart';
import './url_resolver.template.dart' as i0;
import 'annotation_matcher.template.dart' as i1;
import 'mirror_mode.template.dart' as i2;
import 'options.template.dart' as i3;
export 'options_reader.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
