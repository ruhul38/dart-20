import 'dart:convert';

void main() {
  final student = Student(name: 'Ruhul', age: 30, gpa: 3.9);
  final jsonString = jsonEncode(student.toJson());
  print('Original student: ${student.name}');
  print('Serialized to JSON: $jsonString');
  final decodedStudent = Student.fromJson(jsonDecode(jsonString));
  print('Deserialized from JSON: ${decodedStudent.name}');
  print('GPA: ${decodedStudent.gpa}');
}

class Student {
  final String name;
  final int age;
  final double gpa;
  Student({required this.name, required this.age, required this.gpa});
  factory Student.fromJson(Map<String, dynamic> j) =>
      Student(name: j['name'], age: j['age'], gpa: j['gpa'].toDouble());
  Map<String, dynamic> toJson() => {'name': name, 'age': age, 'gpa': gpa};
}
