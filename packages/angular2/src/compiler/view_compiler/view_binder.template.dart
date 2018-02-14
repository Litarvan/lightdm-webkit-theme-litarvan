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
import 'view_binder.dart';
import '../template_ast.dart' show TemplateAst, TemplateAstVisitor, NgContentAst, EmbeddedTemplateAst, ElementAst, ReferenceAst, VariableAst, BoundEventAst, BoundElementPropertyAst, AttrAst, BoundTextAst, TextAst, DirectiveAst, BoundDirectivePropertyAst, templateVisitAll;
import 'compile_element.dart' show CompileElement;
import 'compile_view.dart' show CompileView;
import 'event_binder.dart' show bindRenderOutputs, collectEventListeners, bindDirectiveOutputs;
import 'lifecycle_binder.dart' show bindDirectiveAfterContentLifecycleCallbacks, bindDirectiveAfterViewLifecycleCallbacks, bindDirectiveDestroyLifecycleCallbacks, bindPipeDestroyLifecycleCallbacks, bindDirectiveDetectChangesLifecycleCallbacks;
import 'property_binder.dart' show bindRenderText, bindRenderInputs, bindDirectiveInputs, bindDirectiveHostProps;
import '../template_ast.template.dart' as i0;
import 'compile_element.template.dart' as i1;
import 'compile_view.template.dart' as i2;
import 'event_binder.template.dart' as i3;
import 'lifecycle_binder.template.dart' as i4;
import 'property_binder.template.dart' as i5;
export 'view_binder.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
