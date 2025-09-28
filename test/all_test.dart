import 'package:test/test.dart';
import 'package:dart_20/two_odd_even.dart' as oe;
import 'package:dart_20/three_filter.dart' as f;
import 'package:dart_20/four_divisors.dart' as d;
import 'package:dart_20/five_unique.dart' as u;
import 'package:dart_20/six_word_count.dart' as wc;
import 'package:dart_20/seven_switch.dart' as sw;
import 'package:dart_20/eight_parse_int.dart' as pi;
import 'package:dart_20/nine_days_between.dart' as db;
import 'package:dart_20/ten_is_prime.dart' as p;
import 'package:dart_20/thirteen_student.dart' as st;
import 'package:dart_20/fourteen_next_day.dart' as nd;
import 'package:dart_20/fifteen_reverse.dart' as rev;
import 'package:dart_20/sixteen_palindrome.dart' as pal;
import 'package:dart_20/seventeen_null_default.dart' as nz;
import 'package:dart_20/eighteen_curry.dart' as curry;
import 'package:dart_20/nineteen_fibonacci.dart' as fib;

void main() {
  group('02', () {
    test('even', () => expect(oe.oddEven(4), 'even'));
    test('odd', () => expect(oe.oddEven(3), 'odd'));
  });
  group('03', () => test('filter', () => expect(f.filterLessThanFive([1, 5, 2, 9, 3]), [1, 2, 3])));
  group('04', () => test('divisors', () => expect(d.divisors(12), [1, 2, 3, 4, 6, 12])));
  group('05', () => test('unique', () => expect(u.uniqueFromTwo([1, 2], [2, 3]), [1, 2, 3])));
  group('06', () => test('count', () => expect(wc.wordCount('a b A'), {'a': 2, 'b': 1})));
  group('07', () {
    test('three', () => expect(sw.numberToWord(3), 'three'));
    test('many', () => expect(sw.numberToWord(7), 'many'));
  });
  group('08', () {
    test('valid', () => expect(pi.parseInt('42'), 42));
    test('invalid', () => expect(pi.parseInt('xx'), null));
  });
  group('09', () => test('same day', () => expect(db.daysBetween('2025-01-01', '2025-01-01'), 1)));
  group('10', () {
    test('prime', () => expect(p.isPrime(17), true));
    test('not', () => expect(p.isPrime(18), false));
  });
  group('13', () {
    final s = st.Student(name: 'Ali', age: 21, gpa: 3.8);
    final j = s.toJson();
    final s2 = st.Student.fromJson(j);
    test('round-trip', () => expect(s2.name, 'Ali'));
  });
  group('14', () => test('sun→mon', () => expect(nd.nextDay(nd.Day.sun), nd.Day.mon)));
  group('15', () {
    test('int', () => expect(rev.reverse([1, 2, 3]), [3, 2, 1]));
    test('string', () => expect(rev.reverse(['a', 'b']), ['b', 'a']));
  });
  group('16', () {
    test('true', () => expect('RaceCar'.isPalindrome, true));
    test('false', () => expect('dart'.isPalindrome, false));
  });
  group('17', () {
    test('null', () => expect(nz.nullToZero(null), 0));
    test('value', () => expect(nz.nullToZero(5), 5));
  });
  group('18', () => test('curry', () => expect(curry.curryAdd(3)(4), 7)));
  group('19', () => test('fib', () => expect(fib.fib(6), 8)));
}
