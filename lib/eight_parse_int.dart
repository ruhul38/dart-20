import 'dart:io';

void main() {
  stdout.write('Enter something to parse as an integer: ');
  final input = stdin.readLineSync() ?? '';
  final number = parseInt(input);
  print('Parsed "$input" to: $number');
}

int? parseInt(String s) => int.tryParse(s);
