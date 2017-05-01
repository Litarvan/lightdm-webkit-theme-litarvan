// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library observable.src.property_change_record;

import 'change_record.dart';

/// A change record to a field of an [Observable] object.
class PropertyChangeRecord<T> extends ChangeRecord {
  /// The object that changed.
  final Object object;

  /// The name of the property that changed.
  final Symbol name;

  /// The previous value of the property.
  final T oldValue;

  /// The new value of the property.
  final T newValue;

  PropertyChangeRecord(this.object, this.name, this.oldValue, this.newValue);

  String toString() =>
      '#<PropertyChangeRecord $name from: $oldValue to: $newValue>';
}
