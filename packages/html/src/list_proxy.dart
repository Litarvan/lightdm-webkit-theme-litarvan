/// A [List] proxy that you can subclass.
library list_proxy;

import 'dart:collection';

abstract class ListProxy<E> extends ListBase<E> {
  /// The inner [List<T>] with the actual storage.
  final List<E> _list = <E>[];

  bool remove(Object item) => _list.remove(item);

  int get length => _list.length;

  // From Iterable
  Iterator<E> get iterator => _list.iterator;

  // From List
  E operator [](int index) => _list[index];

  operator []=(int index, E value) {
    _list[index] = value;
  }

  set length(int value) {
    _list.length = value;
  }

  void add(E value) {
    _list.add(value);
  }

  void insert(int index, E item) => _list.insert(index, item);

  void addAll(Iterable<E> collection) {
    _list.addAll(collection);
  }

  void insertAll(int index, Iterable<E> iterable) {
    _list.insertAll(index, iterable);
  }

  E removeAt(int index) => _list.removeAt(index);

  void removeRange(int start, int length) {
    _list.removeRange(start, length);
  }
}
