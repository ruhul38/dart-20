void main() {
  final list = [1, 9, 2, 8, 3, 7, 4, 6, 5];
  print('Original list: $list');
  print('Filtered list (less than 5): ${filterLessThanFive(list)}');
}

List<int> filterLessThanFive(List<int> list) =>
    list.where((x) => x < 5).toList();
