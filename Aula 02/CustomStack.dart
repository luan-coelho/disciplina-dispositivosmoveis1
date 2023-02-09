class CustomStack<T> {
  late List<T> _list = <T>[];

  /**
   * Retorna o último elemento adicionado na pilha
   */
  T? getTop() {
    if (_list.isEmpty) {
      return null;
    }
    return _list.last;
  }

  /**
   * Adiciona um novo elemento a pilha e retorna verdadeiro se tudo deu certo
   */
  bool offer(T value) {
    this._list.add(value);
    return true;
  }

  /**
   * Remove o último elemento da pilha. Caso ela esteja vázia é retornado nulo
   */
  T? poll() {
    if (this._list.isEmpty) {
      return null;
    }
    return _list.removeLast();
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
