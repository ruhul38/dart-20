void main() {
  final date1 = '2024-01-01';
  final date2 = '2024-01-31';
  print('Days between $date1 and $date2 (inclusive):');
  print(daysBetween(date1, date2));
}

int daysBetween(String a, String b) {
  final d1 = DateTime.parse(a);
  final d2 = DateTime.parse(b);
  return d1.difference(d2).abs().inDays + 1;
}
