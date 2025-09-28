import 'dart:io';

void main() {
  stdout.write('Enter a number to check if it is prime: ');
  final number = int.parse(stdin.readLineSync()!);
  print('Is $number prime? ${isPrime(number)}');
}

bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  for (int i = 3; i * i <= n; i += 2) if (n % i == 0) return false;
  return true;
}
