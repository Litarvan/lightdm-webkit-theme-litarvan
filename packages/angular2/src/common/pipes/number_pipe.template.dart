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
import 'number_pipe.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/di.dart' show Injectable, PipeTransform, Pipe;
import 'package:angular2/src/facade/exceptions.dart' show BaseException;
import 'package:angular2/src/facade/intl.dart' show NumberFormatter, NumberFormatStyle;
import 'invalid_pipe_argument_exception.dart' show InvalidPipeArgumentException;
import 'package:angular2/di.template.dart' as i0;
import 'package:angular2/src/facade/exceptions.template.dart' as i1;
import 'package:angular2/src/facade/intl.template.dart' as i2;
import 'invalid_pipe_argument_exception.template.dart' as i3;
export 'number_pipe.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(NumberPipe, new _ngRef.ReflectionInfo(
const <dynamic>[const Injectable()],
const [],
() => new NumberPipe())
)
..registerType(DecimalPipe, new _ngRef.ReflectionInfo(
const <dynamic>[const Pipe(name: "number"), const Injectable()],
const [],
() => new DecimalPipe(),
const <dynamic>[PipeTransform])
)
..registerType(PercentPipe, new _ngRef.ReflectionInfo(
const <dynamic>[const Pipe(name: "percent"), const Injectable()],
const [],
() => new PercentPipe(),
const <dynamic>[PipeTransform])
)
..registerType(CurrencyPipe, new _ngRef.ReflectionInfo(
const <dynamic>[const Pipe(name: "currency"), const Injectable()],
const [],
() => new CurrencyPipe(),
const <dynamic>[PipeTransform])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
