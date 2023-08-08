class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return value.toString();
    return '${value.toString()} ${next.toString()}';
  }
}
