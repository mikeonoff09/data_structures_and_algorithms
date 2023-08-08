/// A class that represents the Stack data structure allowing to store data using
/// the LIFO principle. This class accepts elements of any type [E]
/// The functions push and pop are the only escential operations in a Stack and
/// they are both constant time operations.
class Stack<E> {
  /// Private list of elements
  final List<E> _storage;

  /// Constructor that creates an empty Stack
  Stack() : _storage = <E>[];

  @override
  String toString() {
    return '=== start===\n'
        '${_storage.reversed.join("\n")}\n'
        '=== end ===\n';
  }

  /// Adds the provided [element] to the top of the stack.
  void push(E element) => _storage.add(element);

  /// Deletes the last element from the stack.
  E pop() => _storage.removeLast();

  /// Returns the topmost element in the stack
  E get peek => _storage.last;

  /// returns the lenght of the stack
  int get length => _storage.length;

  /// Returns `true`if thestack is empty.
  bool get isEmpty => _storage.isEmpty;

  /// Returns `true` if the stack is not empty.
  bool get isNotEmpty => !isEmpty;

  /// Creates a Stack from a provided iterable.
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  /// Returns a new stack with the elements of the current stack reversed.
  Stack<E> reverse() {
    return Stack.of(_storage.reversed);
  }

  /// this executes a function for each element in the stack
  void forEach(void Function(E element) callback) {
    _storage.forEach(callback);
  }

  bool isBalanced() {
    int open = 0;
    int close = 0;
    for (var i = 0; i < _storage.length; i++) {
      if (_storage[i] == '(') {
        open++;
      } else if (_storage[i] == ')') {
        close++;
      }
    }
    if (open == close) {
      return true;
    } else {
      return false;
    }
  }

  bool isBalanced2() {
    int balance = 0;

    forEach((element) {
      if (element == '(') {
        balance++;
      } else if (element == ')') {
        balance--;
      }
    });

    return balance == 0;
  }
}
