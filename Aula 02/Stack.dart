class Stack<T> {
  late List<T> _list = <T>[];

  T getTop() {
    return _list.last;
  }

  void push(T value) {
    this._list.add(value);
  }

  void pop() {
    if (this._list.length > 0) {
      this._list.removeLast();
    }
  }

  bool isEmpty() {
    return this._list.isEmpty;
  }

  int size() {
    return this._list.length;
  }

  @override
  String toString() {
    return _list.toString();
  }
}
