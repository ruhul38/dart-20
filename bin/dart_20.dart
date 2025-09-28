import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  final name = stdin.readLineSync()!;
  stdout.write('Enter your age: ');
  final age = int.parse(stdin.readLineSync()!);
  final turn63 = DateTime.now().year + (63 - age);
  print('Assalamualikum $name, you will turn 63 in $turn63');
}
