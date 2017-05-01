
library when;

import 'dart:async';

/// Registers callbacks on the result of a [callback], which may or may not be
/// a [Future].
///
/// If [callback] returns a future, any of [onSuccess], [onError], or
/// [onComplete] that are provided are registered on the future,
/// and the resulting future is returned.
///
/// Otherwise, if [callback] did not throw, if [onSuccess] is provided, it is
/// called with the with the result of [callback], and the return value of
/// [onSuccess] is captured.
///
/// Otherwise, if [onError] was provided, it is called.  It can take either
/// just an error, or a stack trace as well.  If [onError] was not provided,
/// the error is not caught.
///
/// [onComplete] is then called synchronously.
///
/// The captured value is then returned.
when(callback, {onSuccess(result), onError, onComplete}) {
  var result, hasResult = false;

  try {
    result = callback();
    hasResult = true;
  } catch (e, s) {
    if (onError != null) {
      if (onError is _Unary) {
        onError(e);
      } else if (onError is _Binary) {
        onError(e, s);
      } else {
        throw new ArgumentError(
            '"onError" must accept 1 or 2 arguments: $onError');
      }
    } else {
      rethrow;
    }
  } finally {
    if (result is Future) {
      if (onSuccess != null) {
        result = result.then(onSuccess);
      }
      if (onError != null) {
        result = result.catchError(onError);
      }
      if (onComplete != null) {
        result = result.whenComplete(onComplete);
      }
    } else {
      if (hasResult) {
        if (onSuccess != null) {
          result = onSuccess(result);
        }
      }
      if (onComplete != null) onComplete();
    }
  }

  return result;
}

typedef _Unary(x);
typedef _Binary(x, y);
