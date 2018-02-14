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
import 'transformer.dart';
import 'package:barback/barback.dart';
import 'package:dart_style/dart_style.dart';
import 'common/eager_transformer_wrapper.dart';
import 'common/formatter.dart' as formatter;
import 'common/options.dart';
import 'common/options_reader.dart';
import 'deferred_rewriter/transformer.dart';
import 'directive_metadata_linker/transformer.dart';
import 'directive_processor/transformer.dart';
import 'inliner_for_test/transformer.dart';
import 'reflection_remover/transformer.dart';
import 'stylesheet_compiler/transformer.dart';
import 'template_compiler/transformer.dart';
import 'common/eager_transformer_wrapper.template.dart' as i0;
import 'common/formatter.template.dart' as i1;
import 'common/options.template.dart' as i2;
import 'common/options_reader.template.dart' as i3;
import 'deferred_rewriter/transformer.template.dart' as i4;
import 'directive_metadata_linker/transformer.template.dart' as i5;
import 'directive_processor/transformer.template.dart' as i6;
import 'inliner_for_test/transformer.template.dart' as i7;
import 'reflection_remover/transformer.template.dart' as i8;
import 'stylesheet_compiler/transformer.template.dart' as i9;
import 'template_compiler/transformer.template.dart' as i10;
export 'transformer.dart';
export 'common/options.dart';

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
i9.initReflector();
i10.initReflector();
}
