void main() {
  final add5 = curryAdd(5);
  final result = add5(10);
  print('Using currying: 5 + 10 = $result');
}

int Function(int) curryAdd(int a) =>
    (int b) => a + b;
