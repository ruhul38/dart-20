import 'dart:io';

void main() {
  stdout.write('Enter a number to calculate its Fibonacci value: ');
  final number = int.parse(stdin.readLineSync()!);
  print('fib($number) is ${fib(number)}');
}

final _c = <int, int>{};
int fib(int n) {
  if (n < 2) return n;
  return _c[n] ??= fib(n - 1) + fib(n - 2);
}
