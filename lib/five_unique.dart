void main() {
  final listA = [1, 1, 2, 3, 5, 8];
  final listB = [1, 2, 4, 8, 16];
  print('List A: $listA');
  print('List B: $listB');
  print('Unique elements from both: ${uniqueFromTwo(listA, listB)}');
}

List<T> uniqueFromTwo<T>(List<T> a, List<T> b) =>
    (a.followedBy(b).toSet()).toList();
