import 'person.dart';
import 'subject.dart';

class Student extends Person {
  Map<Subject, double> marks;

  Student(String fullName, int age, bool isMarried, this.marks)
    : super(fullName, age, isMarried);

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    if (marks.isEmpty) return 0.0;

    double sum = 0;
    for (var mark in marks.values) {
      sum += mark;
    }
    return sum / marks.length;
  }

  @override
  void introduce() {
    print(
      'Hi! My name is $fullName. I am $age years old.'
      ' Married: ${isMarried ? "Yes" : "No"}.',
    );
    print('Average mark: ${calculateAverage()}');
  }
}
