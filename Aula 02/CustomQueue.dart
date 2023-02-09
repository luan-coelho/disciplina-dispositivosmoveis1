class CustomQueue<T> {
  late List<T> _list = <T>[];

  /**
   * Retorna o primeiro elemento adicionado a fila
   */
  T? getFirst() {
    if (_list.isEmpty) {
      return null;
    }
    return _list.first;
  }

  /**
   * Adiciona um novo elemento a fila
   */
  void push(T value) {
    this._list.add(value);
  }

  /**
   * Remove o primeiro elemento da fila
   */
  void pop() {
    if (this._list.length > 0) {
      this._list.removeAt(0);
    }
  }

  /**
   * Retorna se a pilha está vazia ou não
   */
  bool isEmpty() {
    return this._list.isEmpty;
  }

  /**
   * Retorna o tamanho da pilha
   */
  int size() {
    return this._list.length;
  }

  @override
  String toString() {
    return _list.toString();
  }
}
