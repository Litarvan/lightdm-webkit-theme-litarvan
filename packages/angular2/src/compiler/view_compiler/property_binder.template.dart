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
import 'property_binder.dart';
import 'package:angular2/src/core/change_detection/constants.dart' show isDefaultChangeDetectionStrategy, ChangeDetectionStrategy;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LifecycleHooks;
import 'package:angular2/src/core/security.dart';
import 'package:angular2/src/transform/common/names.dart' show toTemplateExtension;
import '../compile_metadata.dart';
import '../expression_parser/ast.dart' as ast;
import '../identifiers.dart' show Identifiers;
import '../output/output_ast.dart' as o;
import '../template_ast.dart' show BoundTextAst, BoundElementPropertyAst, DirectiveAst, PropertyBindingType;
import 'compile_binding.dart' show CompileBinding;
import 'compile_element.dart' show CompileElement, CompileNode;
import 'compile_method.dart' show CompileMethod;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show DetectChangesVars;
import 'expression_converter.dart' show convertCdExpressionToIr;
import 'view_builder.dart' show buildUpdaterFunctionName;
import 'view_compiler_utils.dart' show createSetAttributeParams;
import 'package:angular2/src/core/linker/app_view_utils.dart' show NAMESPACE_URIS;
import 'package:angular2/src/core/change_detection/constants.template.dart' as i0;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i1;
import 'package:angular2/src/core/security.template.dart' as i2;
import 'package:angular2/src/transform/common/names.template.dart' as i3;
import '../compile_metadata.template.dart' as i4;
import '../expression_parser/ast.template.dart' as i5;
import '../identifiers.template.dart' as i6;
import '../output/output_ast.template.dart' as i7;
import '../template_ast.template.dart' as i8;
import 'compile_binding.template.dart' as i9;
import 'compile_element.template.dart' as i10;
import 'compile_method.template.dart' as i11;
import 'compile_view.template.dart' as i12;
import 'constants.template.dart' as i13;
import 'expression_converter.template.dart' as i14;
import 'view_builder.template.dart' as i15;
import 'view_compiler_utils.template.dart' as i16;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i17;
export 'property_binder.dart';

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
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
}
