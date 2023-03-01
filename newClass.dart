import 'dart:mirrors';

void main() {
  final test = Test(name: "Kyaw Kyaw", age: 20, birthYear: 2003);
  print(test.age);
  print(test.name);
  print(test.dateOfBirth);
  print(test.birthYear);
  print(test._calculateAge);
  test.testPrint();
}

class Test {
  final String name;
  int age;
  late int dateOfBirth;
  final int birthYear;
  late int _calculateAge;
  void testPrint() {
    print("$name is $_calculateAge and born at $birthYear");
  }

  int get getCalAge {
    return _calculateAge;
  }

  Test(
      {required String this.name,
      required int this.age,
      required int this.birthYear}) {
    dateOfBirth = DateTime.now().year - age;
    _calculateAge = DateTime.now().year - birthYear;
  }
}
