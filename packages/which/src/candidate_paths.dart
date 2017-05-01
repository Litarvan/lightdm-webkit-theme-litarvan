
library which.src.candidate_paths;

import 'dart:io';

import 'package:path/path.dart';

Iterable<String> getCandidatePaths(String command, Map<String, String> environment, bool isWindows, Context context) {
  if (context.isAbsolute(command)) return [command];

  String getEnvVar(String envVar, String defaultValue) {
    var v = environment[envVar];
    return v == null ? defaultValue : v;
  }

  var pathVarSeparator = isWindows ? ";" : ":";

  List<String> splitEnvVar(String envVar, String defaultValue) =>
      getEnvVar(envVar, defaultValue).split(pathVarSeparator);

  var pathEnv = splitEnvVar('PATH', '');

  var noExtPaths =
      pathEnv.map((pathEntry) => context.join(pathEntry, command));

  if (!isWindows) return noExtPaths;

  pathEnv.insert(0, context.current);
  var pathExt = splitEnvVar('PATHEXT', ".EXE");
  if (command.contains('.')) pathExt.insert(0, '');
  return noExtPaths.expand((commandPath) =>
      pathExt.map((pathExtEntry) => commandPath + pathExtEntry));
}

Iterable<String> getRealCandidatePaths(String command) =>
    getCandidatePaths(command, Platform.environment, Platform.isWindows, context);
