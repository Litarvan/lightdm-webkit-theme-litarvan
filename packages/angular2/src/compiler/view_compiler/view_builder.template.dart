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
import 'view_builder.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart' show ChangeDetectionStrategy, isDefaultChangeDetectionStrategy;
import 'package:angular2/src/core/linker/view_type.dart' show ViewType;
import 'package:angular2/src/core/linker/app_view_utils.dart' show NAMESPACE_URIS;
import 'package:angular2/src/core/metadata/view.dart' show ViewEncapsulation;
import '../compile_metadata.dart' show CompileIdentifierMetadata, CompileDirectiveMetadata;
import '../identifiers.dart' show Identifiers, identifierToken;
import '../output/output_ast.dart' as o;
import '../style_compiler.dart' show StylesCompileResult;
import '../template_ast.dart' show TemplateAst, TemplateAstVisitor, NgContentAst, EmbeddedTemplateAst, ElementAst, ReferenceAst, VariableAst, BoundEventAst, BoundElementPropertyAst, AttrAst, BoundTextAst, TextAst, DirectiveAst, BoundDirectivePropertyAst, templateVisitAll;
import 'compile_element.dart' show CompileElement, CompileNode;
import 'compile_view.dart' show CompileView;
import 'constants.dart' show ViewConstructorVars, InjectMethodVars, DetectChangesVars, ViewTypeEnum, ViewEncapsulationEnum, ChangeDetectionStrategyEnum, ViewProperties;
import 'property_binder.dart';
import 'view_compiler_utils.dart' show getViewFactoryName, createFlatArray, createDiTokenExpression, createSetAttributeParams, TEMPLATE_COMMENT_TEXT;
import 'package:angular2/src/core/change_detection/change_detection.template.dart' as i0;
import 'package:angular2/src/core/linker/view_type.template.dart' as i1;
import 'package:angular2/src/core/linker/app_view_utils.template.dart' as i2;
import 'package:angular2/src/core/metadata/view.template.dart' as i3;
import '../compile_metadata.template.dart' as i4;
import '../identifiers.template.dart' as i5;
import '../output/output_ast.template.dart' as i6;
import '../style_compiler.template.dart' as i7;
import '../template_ast.template.dart' as i8;
import 'compile_element.template.dart' as i9;
import 'compile_view.template.dart' as i10;
import 'constants.template.dart' as i11;
import 'property_binder.template.dart' as i12;
import 'view_compiler_utils.template.dart' as i13;
export 'view_builder.dart';

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
}
