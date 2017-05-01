
library which;

import 'dart:async';
import 'dart:io';

import 'src/candidate_paths.dart';
import 'src/is_executable.dart';
import 'src/which_impl.dart' as impl;

/// Returns a future for the first [command] executable in the `PATH`.
///
/// If [command] is not found, [orElse] is called, which defaults to throwing.
Future<String> which(String command, { orElse() }) => new Future(() => impl.which(
    command,
    getRealCandidatePaths(command),
    Platform.isWindows,
    (path, isWindows) => isExecutable(path, isWindows, FileStat.stat),
    orElse));

/// Returns the first [command] executable in the `PATH`.
///
/// If [command] is not found, [orElse] is called, which defaults to throwing.
String whichSync(String command, { orElse() }) => impl.whichSync(
    command,
    getRealCandidatePaths(command),
    Platform.isWindows,
    (path, isWindows) => isExecutableSync(path, isWindows, FileStat.statSync),
    orElse);
