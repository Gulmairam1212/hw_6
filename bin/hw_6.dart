import 'student.dart';
import 'teacher.dart';
import 'subject.dart';

void main() {
  print('---TEACHER INFO---');

  Teacher teacher = Teacher('Helen Scot', 45, true, 5);

  teacher.introduce();

  print('---STUDENTS INFO---');

  Student student1 = Student('John brown', 17, false, {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
  });
  student1.introduce();
  student1.showMarks();

  Student student2 = Student('Alisa Smith', 19, true, {
    Subject.math: 95,
    Subject.physics: 100,
    Subject.english: 88,
  });

  student2.introduce();
  student2.showMarks();
}
