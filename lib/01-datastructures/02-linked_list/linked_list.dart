import 'package:data_structures_and_algorithms/01-datastructures/02-linked_list/node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
  }

  /// adds a node to the front of the list
  /// O(1)
  void push(E value) {
    head = Node<E>(value: value, next: head);
    tail ??= head;
  }

  /// adds a node to the end of the list
  /// O(1)
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node<E>(value: value);
    tail = tail!.next;
  }

  /// finds a node in the [index] position
  /// O(n)
  
}
