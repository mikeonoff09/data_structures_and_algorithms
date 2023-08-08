import 'package:test/test.dart';
import 'package:data_structures_and_algorithms/01-datastructures/02-linked_list/node.dart';

// test for the Node class
void main() {
  group('Constructor tests', () {
    test('constructor', () {
      Node<int> node = Node<int>(value: 1);
      expect(node.value, 1);
    });
    test('constructor', () {
      Node<String> node = Node<String>(value: '123');
      expect(node.value, '123');
    });
  });

  group('Linking tests', () {
    test('Linking test', () {
      Node<int> node1 = Node<int>(value: 1);
      Node<int> node2 = Node<int>(value: 2);
      Node<int> node3 = Node<int>(value: 3);

      node1.next = node2;
      node2.next = node3;

      expect(node1.next, equals(node2));
      expect(node2.next, equals(node3));
      expect(node3.next, isNull);
    });
  });

  group('toString Test', () {
    test('tostring Test', () {
      Node<int> node1 = Node<int>(value: 1);
      Node<int> node2 = Node<int>(value: 2);
      Node<int> node3 = Node<int>(value: 3);

      node1.next = node2;
      node2.next = node3;

      expect(node1.toString(), equals('1 2 3'));
      expect(node2.toString(), equals('2 3'));
    });

    test('toString with Different data types test', () {
      Node<String> node1 = Node<String>(value: '1');
      Node<int> node2 = Node<int>(value: 32);
      Node<double> node3 = Node<double>(value: 3.2);

      expect(node1.toString(), '1');
      expect(node2.toString(), '32');
      expect(node3.toString(), '3.2');
    });
  });

  group('null value test', () {
    test('null value test', () {
      Node<int?> node3 = Node<int?>(value: null);

      expect(node3.next, isNull);
      expect(node3.toString(), 'null');
    });
  });
}
