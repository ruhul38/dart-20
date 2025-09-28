import 'dart:io';

void main() {
  stdout.write('Enter a string to check if it is a palindrome: ');
  final input = stdin.readLineSync() ?? '';
  final result = input.isPalindrome;
  print('Is "$input" a palindrome? $result');
}

extension Palindrome on String {
  bool get isPalindrome {
    final s = toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    return s == s.split('').reversed.join();
  }
}
