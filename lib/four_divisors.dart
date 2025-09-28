import 'dart:io';

void main() {
  stdout.write('Enter a number to find its divisors: ');
  final number = int.parse(stdin.readLineSync()!);
  print('Divisors of $number are: ${divisors(number)}');
}

List<int> divisors(int n) {
  final res = <int>{};
  for (int i = 1; i <= n; i++) if (n % i == 0) res.add(i);
  return res.toList()..sort();
}
