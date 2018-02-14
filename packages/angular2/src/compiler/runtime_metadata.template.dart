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
import 'runtime_metadata.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/compiler/url_resolver.dart' show getUrlScheme;
import 'package:angular2/src/core/di.dart' show Injectable, Inject, Optional;
import 'package:angular2/src/core/di/decorators.dart';
import 'package:angular2/src/core/di/provider.dart' show Provider;
import 'package:angular2/src/core/di/reflective_provider.dart' show constructDependencies, ReflectiveDependency;
import 'package:angular2/src/core/metadata.dart' show View, Attribute, Query, Component;
import 'package:angular2/src/core/metadata/lifecycle_hooks.dart' show LIFECYCLE_HOOKS_VALUES;
import 'package:angular2/src/core/platform_directives_and_pipes.dart' show PLATFORM_DIRECTIVES, PLATFORM_PIPES;
import 'package:angular2/src/core/reflection/reflection.dart' show reflector;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/lang.dart' show stringify;
import 'compile_metadata.dart' as cpl;
import 'compiler_utils.dart' show MODULE_SUFFIX, sanitizeIdentifier;
import 'directive_lifecycle_reflector.dart' show hasLifecycleHook;
import 'directive_resolver.dart' show DirectiveResolver;
import 'pipe_resolver.dart' show PipeResolver;
import 'view_resolver.dart' show ViewResolver;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i0;
import 'package:angular2/src/core/di.template.dart' as i1;
import 'package:angular2/src/core/di/decorators.template.dart' as i2;
import 'package:angular2/src/core/di/provider.template.dart' as i3;
import 'package:angular2/src/core/di/reflective_provider.template.dart' as i4;
import 'package:angular2/src/core/metadata.template.dart' as i5;
import 'package:angular2/src/core/metadata/lifecycle_hooks.template.dart' as i6;
import 'package:angular2/src/core/platform_directives_and_pipes.template.dart' as i7;
import 'package:angular2/src/core/reflection/reflection.template.dart' as i8;
import 'package:angular2/src/facade/exceptions.template.dart' as i9;
import 'package:angular2/src/facade/lang.template.dart' as i10;
import 'compile_metadata.template.dart' as i11;
import 'compiler_utils.template.dart' as i12;
import 'directive_lifecycle_reflector.template.dart' as i13;
import 'directive_resolver.template.dart' as i14;
import 'pipe_resolver.template.dart' as i15;
import 'view_resolver.template.dart' as i16;
export 'runtime_metadata.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(RuntimeMetadataResolver, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [const <dynamic>[DirectiveResolver], const <dynamic>[PipeResolver], const <dynamic>[ViewResolver], const <dynamic>[List, const Optional(), const Inject(PLATFORM_DIRECTIVES)], const <dynamic>[List, const Optional(), const Inject(PLATFORM_PIPES)]],
(DirectiveResolver _directiveResolver, PipeResolver _pipeResolver, ViewResolver _viewResolver, List<Type> _platformDirectives, List<Type> _platformPipes) => new RuntimeMetadataResolver(_directiveResolver, _pipeResolver, _viewResolver, _platformDirectives, _platformPipes))
)
;
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
}
