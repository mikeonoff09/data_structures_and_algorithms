import 'package:data_structures_and_algorithms/01-datastructures/01-stacks/stack.dart';

/// REVERSE A LIST
///
/// Create a function that prints the elements of a list in reverse order



void main() {
  List list = [1, 2, 3, 4, 5];
  final stack = Stack.of(list);
  print(stack.toString());
  print(stack.reverse().toString());
}
