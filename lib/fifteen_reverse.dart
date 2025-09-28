void main() {
  final original = [1, 2, 3, 4, 5];
  print('Original list: $original');
  print('Reversed list: ${reverse(original)}');
}

List<T> reverse<T>(List<T> list) => list.reversed.toList();
