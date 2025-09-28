void main() {
  final today = Day.sun;
  final tomorrow = nextDay(today);
  print('Today is $today, tomorrow is $tomorrow.');
}

enum Day { mon, tue, wed, thu, fri, sat, sun }

Day nextDay(Day today) => Day.values[(today.index + 1) % 7];
