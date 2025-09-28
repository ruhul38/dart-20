import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  final input = stdin.readLineSync();
  final number = int.tryParse(input ?? '');
  if (number != null) {
    print('The number $number is ${oddEven(number)}.');
  }
}

String oddEven(int n) => n % 2 == 0 ? 'even' : 'odd';
