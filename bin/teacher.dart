import 'person.dart';

class Teacher extends Person {
  int experience;

  final double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarried, this.experience)
    : super(fullName, age, isMarried);

  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      for (int year = 4; year <= experience; year++) {
        salary = salary * 1.05;
      }
    }
    if (isMarried) {
      salary += 5000;
    }
    return salary;
  }

  @override
  void introduce() {
    print(
      'Hi! My name is $fullName. I am $age year old. Married: ${isMarried?"Yes" : "No"}',
    );

    print('Experience: $experience years.');
    print('Salary: ${calculateSalary()}');
  }
}
