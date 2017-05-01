// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library observable.src.observable;

import 'dart:async';
import 'dart:collection' show UnmodifiableListView;

import 'package:meta/meta.dart';

import 'change_record.dart' show ChangeRecord;
import 'property_change_record.dart' show PropertyChangeRecord;

/// Represents an object with observable properties. This is used by data in
/// model-view architectures to notify interested parties of [changes] to the
/// object's properties (fields or getter/setter pairs).
///
/// The interface does not require any specific technique to implement
/// observability. You can implement it in the following ways:
///
/// - Deriving from this class via a mixin or base class. When a field,
///   property, or indexable item is changed, the derived class should call
///   [notifyPropertyChange]. See that method for an example.
/// - Implementing this interface and providing your own implementation.
abstract class Observable {
  StreamController<List<ChangeRecord>> _changes;

  List<ChangeRecord> _records;

  /// The stream of property change records to this object, delivered
  /// asynchronously.
  ///
  /// [deliverChanges] can be called to force synchronous delivery.
  Stream<List<ChangeRecord>> get changes {
    if (_changes == null) {
      _changes = new StreamController.broadcast(
          sync: true, onListen: observed, onCancel: unobserved);
    }
    return _changes.stream;
  }

  /// Derived classes may override this method to be called when the [changes]
  /// are first observed.
  // TODO(tvolkert): @mustCallSuper (github.com/dart-lang/sdk/issues/27275)
  @protected
  void observed() {}

  /// Derived classes may override this method to be called when the [changes]
  /// are no longer being observed.
  // TODO(tvolkert): @mustCallSuper (github.com/dart-lang/sdk/issues/27275)
  @protected
  void unobserved() {
    // Free some memory
    _changes = null;
  }

  /// True if this object has any observers.
  bool get hasObservers => _changes != null && _changes.hasListener;

  /// Synchronously deliver pending [changes].
  ///
  /// Returns `true` if any records were delivered, otherwise `false`.
  /// Pending records will be cleared regardless, to keep newly added
  /// observers from being notified of changes that occurred before
  /// they started observing.
  bool deliverChanges() {
    List<ChangeRecord> records = _records;
    _records = null;
    if (hasObservers && records != null) {
      _changes.add(new UnmodifiableListView<ChangeRecord>(records));
      return true;
    }
    return false;
  }

  /// Notify that the [field] name of this object has been changed.
  ///
  /// The [oldValue] and [newValue] are also recorded. If the two values are
  /// equal, no change will be recorded.
  ///
  /// For convenience this returns [newValue].
  /*=T*/ notifyPropertyChange/*<T>*/(
      Symbol field, /*=T*/ oldValue, /*=T*/ newValue) {
    if (hasObservers && oldValue != newValue) {
      notifyChange(new PropertyChangeRecord(this, field, oldValue, newValue));
    }
    return newValue;
  }

  /// Notify observers of a change.
  ///
  /// This will automatically schedule [deliverChanges].
  ///
  /// For most objects [Observable.notifyPropertyChange] is more convenient, but
  /// collections sometimes deliver other types of changes such as a
  /// [MapChangeRecord].
  void notifyChange(ChangeRecord record) {
    if (!hasObservers) return;
    if (_records == null) {
      _records = [];
      scheduleMicrotask(deliverChanges);
    }
    _records.add(record);
  }
}
