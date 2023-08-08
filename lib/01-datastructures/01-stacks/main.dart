import 'stack.dart';

void main(List<String> args) {
  final stack = Stack<int>();
  print(stack.toString());
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack.toString());
  stack.pop();
  print(stack.toString());
}
