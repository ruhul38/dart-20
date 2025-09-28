import 'dart:io';

void main() {
  stdout.write('Enter a number between 1 and 5: ');
  final number = int.parse(stdin.readLineSync()!);
  print('The word for $number is: ${numberToWord(number)}');
}

String numberToWord(int n) {
  switch (n) {
    case 1:
      return 'one';
    case 2:
      return 'two';
    case 3:
      return 'three';
    case 4:
      return 'four';
    case 5:
      return 'five';
    default:
      return 'many';
  }
}
