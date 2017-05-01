
library which.src.which_impl;

import 'dart:async';

import 'package:when/when.dart';

import 'util.dart';

Future<String> which(
    String command,
    Iterable<String> candidatePaths,
    bool isWindows,
    Future<bool> isExecutable(String path, bool isWindows),
    orElse()) => new Future(() => _which(
    command,
    candidatePaths,
    isWindows,
    isExecutable,
    orElse,
    toSequence: (items) => new Stream.fromIterable(items)));

String whichSync(
    String command,
    Iterable<String> candidatePaths,
    bool isWindows,
    bool isExecutable(String path, bool isWindows),
    orElse()) => _which(
    command,
    candidatePaths,
    isWindows,
    isExecutable,
    orElse);

_which(
    String command,
    Iterable<String> candidatePaths,
    bool isWindows,
    isExecutable(String path, bool isWindows),
    orElse(),
    {toSequence(Iterable items): identity}) => when(
    () => firstWhere(
        toSequence(candidatePaths),
        (path) => isExecutable(path, isWindows),
        orElse: orElse != null ? orElse : () => _commandNotFound(command, null)),
    onError: (e) => _commandNotFound(command, e));

_commandNotFound(String command, e) {
  var message = 'Command not found: $command';
  if (e != null) message += '\n$e';
  throw new StateError(message);
}
