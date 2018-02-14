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
import 'di.dart';
import 'package:angular2/src/core/di/decorators.template.dart' as i0;
import 'package:angular2/src/core/di/injector.template.dart' as i1;
import 'package:angular2/src/core/di/reflective_injector.template.dart' as i2;
import 'package:angular2/src/core/di/provider.template.dart' as i3;
import 'package:angular2/src/core/di/reflective_provider.template.dart' as i4;
import 'package:angular2/src/core/di/reflective_key.template.dart' as i5;
import 'package:angular2/src/core/di/reflective_exceptions.template.dart' as i6;
import 'package:angular2/src/core/di/opaque_token.template.dart' as i7;
import 'package:angular2/src/core/testability/testability.template.dart' as i8;
import 'package:angular2/src/facade/exception_handler.template.dart' as i9;
import 'package:angular2/src/core/zone/ng_zone.template.dart' as i10;
import 'package:angular2/src/core/change_detection/pipe_transform.template.dart' as i11;
import 'package:angular2/src/core/metadata.template.dart' as i12;
import 'package:angular2/src/facade/exceptions.template.dart' as i13;
import 'package:angular2/src/facade/async.template.dart' as i14;
import 'package:angular2/src/compiler/url_resolver.template.dart' as i15;
export 'di.dart';
export 'package:angular2/src/core/di/decorators.dart';
export 'package:angular2/src/core/di/injector.dart' show Injector, InjectorFactory;
export 'package:angular2/src/core/di/reflective_injector.dart' show ReflectiveInjector;
export 'package:angular2/src/core/di/provider.dart' show Provider, provide, noValueProvided;
export 'package:angular2/src/core/di/reflective_provider.dart' show ResolvedReflectiveBinding, ResolvedReflectiveFactory, ReflectiveDependency, ResolvedReflectiveProvider;
export 'package:angular2/src/core/di/reflective_key.dart' show ReflectiveKey;
export 'package:angular2/src/core/di/reflective_exceptions.dart' show NoProviderError, AbstractProviderError, CyclicDependencyError, InstantiationError, InvalidProviderError, NoAnnotationError, OutOfBoundsError;
export 'package:angular2/src/core/di/opaque_token.dart' show OpaqueToken;
export 'package:angular2/src/core/testability/testability.dart';
export 'package:angular2/src/facade/exception_handler.dart' show ExceptionHandler;
export 'package:angular2/src/core/zone/ng_zone.dart';
export 'package:angular2/src/core/change_detection/pipe_transform.dart';
export 'package:angular2/src/core/metadata.dart' show Component, Directive, Input, Output;
export 'package:angular2/src/core/metadata.dart' show Pipe;
export 'package:angular2/src/facade/exceptions.dart' show WrappedException;
export 'package:angular2/src/facade/async.dart' show EventEmitter;
export 'package:angular2/src/compiler/url_resolver.dart' show UrlResolver;

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
}
