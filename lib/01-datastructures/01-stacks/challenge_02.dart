import 'package:data_structures_and_algorithms/01-datastructures/01-stacks/stack.dart';

void main() {
  // give me a large balanced string
  String balanced = '(()()()())(()()()())(()()()())(()()()())(()()()())(()()()())';
  Stack stack = Stack.of(balanced.split(''));
  bool isBalanced = stack.isBalanced2();
  print('$balanced isBalanced: $isBalanced');
  String unBalanced = '(())()((()))))';
  Stack stack2 = Stack.of(unBalanced.split(''));
  bool isBalanced2 = stack2.isBalanced2();
  print('$unBalanced isBalanced: $isBalanced2');
}
