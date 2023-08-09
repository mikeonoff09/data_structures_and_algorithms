import 'package:data_structures_and_algorithms/01-datastructures/01-stacks/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack Tests', () {
    test('Push and Pop', () {
      Stack<int> stack = Stack();
      stack.push(1);
      stack.push(2);
      stack.push(3);

      expect(stack.pop(), equals(3));
      expect(stack.pop(), equals(2));
      expect(stack.pop(), equals(1));
    });

    test('Peek', () {
      Stack<String> stack = Stack();
      stack.push('A');
      stack.push('B');

      expect(stack.peek, equals('B'));
      stack.pop();
      expect(stack.peek, equals('A'));
    });

    test('Length', () {
      Stack<double> stack = Stack();
      stack.push(1.0);
      stack.push(2.0);

      expect(stack.length, equals(2));
      stack.pop();
      expect(stack.length, equals(1));
    });

    test('IsEmpty', () {
      Stack<bool> stack = Stack();

      expect(stack.isEmpty, isTrue);
      stack.push(true);
      expect(stack.isEmpty, isFalse);
    });

    test('IsNotEmpty', () {
      Stack<String> stack = Stack();

      expect(stack.isNotEmpty, isFalse);
      stack.push('data');
      expect(stack.isNotEmpty, isTrue);
    });

    test('Stack Creation', () {
      Stack<int> stack = Stack.of([4, 5, 6]);

      expect(stack.length, equals(3));
      expect(stack.pop(), equals(6));
    });

    test('Reverse', () {
      Stack<String> stack = Stack.of(['one', 'two', 'three']);
      Stack<String> reversed = stack.reverse();

      expect(reversed.pop(), equals('one'));
      expect(reversed.pop(), equals('two'));
      expect(reversed.pop(), equals('three'));
    });

    test('ForEach', () {
      Stack<int> stack = Stack.of([10, 20, 30]);
      int sum = 0;

      stack.forEach((element) {
        sum += element;
      });

      expect(sum, equals(60));
    });

    test('IsBalanced', () {
      Stack<String> balancedStack = Stack.of(['(', '(', ')', ')']);
      Stack<String> unbalancedStack = Stack.of(['(', ')', '(', '(']);

      expect(balancedStack.isBalanced(), isTrue);
      expect(unbalancedStack.isBalanced(), isFalse);
    });

    test('IsBalanced2', () {
      Stack<String> balancedStack = Stack.of(['(', '(', ')', ')']);
      Stack<String> unbalancedStack = Stack.of(['(', ')', '(', '(']);

      expect(balancedStack.isBalanced2(), isTrue);
      expect(unbalancedStack.isBalanced2(), isFalse);
    });
  });
}