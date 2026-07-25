import 'dart:io';

void main() {
  print("Enter your name");

  String? name = stdin.readLineSync();
  print("Enter your age");

  int? age = int.tryParse(stdin.readLineSync()!);
  print("Enter your GPA");
  double? gpa = double.tryParse(stdin.readLineSync()!);

  print("Graduated? type y or n");
  String? value = stdin.readLineSync();
  bool? isGraduated = value == "y" ? true : false;

  List<String>? registeredcourses;
  if (!isGraduated) {
    registeredcourses = ["Flutter", "Dart", "JavaScript", "Python"];
  }
  print("Students Registered courses $registeredcourses");

  print("Number of registered courses: ${registeredcourses?.length ?? 0}");
}
