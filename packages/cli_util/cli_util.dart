// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library cli_util;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:which/which.dart';

/// Return the path to the current Dart SDK. This will return `null` if we are
/// unable to locate the Dart SDK.
Directory getSdkDir([List<String> cliArgs]) {
  // Look for --dart-sdk on the command line.
  if (cliArgs != null) {
    int index = cliArgs.indexOf('--dart-sdk');

    if (index != -1 && (index + 1 < cliArgs.length)) {
      return new Directory(cliArgs[index + 1]);
    }

    for (String arg in cliArgs) {
      if (arg.startsWith('--dart-sdk=')) {
        return new Directory(arg.substring('--dart-sdk='.length));
      }
    }
  }

  // Look in env['DART_SDK']
  if (Platform.environment['DART_SDK'] != null) {
    return new Directory(Platform.environment['DART_SDK']);
  }

  // Look relative to the dart executable.
  Directory sdkDirectory = new File(Platform.executable).parent.parent;
  if (_isSdkDir(sdkDirectory)) return sdkDirectory;

  // Try and locate the VM using 'which'.
  String executable = whichSync('dart', orElse: () => null);

  if (executable != null) {
    // In case Dart is symlinked (e.g. homebrew on Mac) follow symbolic links.
    Link link = new Link(executable);
    if (link.existsSync()) {
      executable = link.resolveSymbolicLinksSync();
    }

    Link parentLink = new Link(p.dirname(executable));
    if (parentLink.existsSync()) {
      executable = p.join(
          parentLink.resolveSymbolicLinksSync(), p.basename(executable));
    }

    File dartVm = new File(executable);
    Directory dir = dartVm.parent.parent;
    if (_isSdkDir(dir)) return dir;
  }

  return null;
}

bool _isSdkDir(Directory dir) => _joinFile(dir, ['version']).existsSync();

File _joinFile(Directory dir, List<String> files) {
  String pathFragment = files.join(Platform.pathSeparator);
  return new File("${dir.path}${Platform.pathSeparator}${pathFragment}");
}
