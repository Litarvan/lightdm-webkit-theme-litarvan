// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// A library for general helper code associated with the intl library
/// rather than confined to specific parts of it.

library intl_helpers;

import 'dart:async';
import 'package:intl/intl.dart';

/// Type for the callback action when a message translation is not found.
typedef MessageIfAbsent(String message_str, List args);

/// This is used as a marker for a locale data map that hasn't been initialized,
/// and will throw an exception on any usage that isn't the fallback
/// patterns/symbols provided.
class UninitializedLocaleData<F> implements MessageLookup {
  final String message;
  final F fallbackData;
  const UninitializedLocaleData(this.message, this.fallbackData);

  operator [](String key) =>
      (key == 'en_US') ? fallbackData : _throwException();

  String lookupMessage(String message_str, String locale, String name,
          List args, String meaning,
          {MessageIfAbsent ifAbsent}) =>
      message_str;

  /// Given an initial locale or null, returns the locale that will be used
  /// for messages.
  String findLocale(String locale) => locale ?? Intl.getCurrentLocale();

  List<String> get keys => _throwException() as List<String>;

  bool containsKey(String key) => (key == 'en_US') ? true : _throwException();

  _throwException() {
    throw new LocaleDataException("Locale data has not been initialized"
        ", call $message.");
  }

  void addLocale(String localeName, Function findLocale) => _throwException();
}

abstract class MessageLookup {
  String lookupMessage(
      String message_str, String locale, String name, List args, String meaning,
      {MessageIfAbsent ifAbsent});
  void addLocale(String localeName, Function findLocale);
}

class LocaleDataException implements Exception {
  final String message;
  LocaleDataException(this.message);
  toString() => "LocaleDataException: $message";
}

///  An abstract superclass for data readers to keep the type system happy.
abstract class LocaleDataReader {
  Future read(String locale);
}

/// The internal mechanism for looking up messages. We expect this to be set
/// by the implementing package so that we're not dependent on its
/// implementation.
MessageLookup messageLookup =
    const UninitializedLocaleData('initializeMessages(<locale>)', null);

/// Initialize the message lookup mechanism. This is for internal use only.
/// User applications should import `message_lookup_by_library.dart` and call
/// `initializeMessages`
void initializeInternalMessageLookup(Function lookupFunction) {
  if (messageLookup is UninitializedLocaleData) {
    messageLookup = lookupFunction();
  }
}

/// If a message is a string literal without interpolation, compute
/// a name based on that and the meaning, if present.
// NOTE: THIS LOGIC IS DUPLICATED IN intl_translation AND THE TWO MUST MATCH.
String computeMessageName(String name, String text, String meaning) {
  if (name != null && name != "") return name;
  return meaning == null ? text : "${text}_${meaning}";
}
