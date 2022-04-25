// Question: Peter is a student in University of Lagos, write a Program to calculate his grades.
// Explanation :  Peter is expected to input a subject as well as the  score, you are to show the result in the format below

// Output: Your grade  for Mathematics is A

// Note: Consider all marks to be out of 100, for each subject.

// A= 80 above

// B = 60 -79(60 and 79 inclusive)

// C = 50 - 59(50 and 59 inclusive)

// D = 40-49(40 and 49 inclusive)

// F = any score below 40

import 'dart:io'; // A package to import the stdin and stdout functions

void main(List<String> args) {
  print(showGrade()); //running the method showGrade

  //You can uncomment the next line to see how it work but make sure you comment out the first print
  // print(showGrade("Mathematics", 87));
}

// A function that return aString

String showGrade([String? subjec, int? scor]) {
  stdout.write("Enter Subject name: ");
  String subject =
      subjec ?? stdin.readLineSync()!; // to get the user value for subject

  stdout.write("Enter your Score: ");
  int score =
      scor ?? int.parse(stdin.readLineSync()!); // to get user value for Score

  late String _grade; //local variable to store the grade

  // Condition to determine the Grade

  if (score < 0 || score > 100) {
    return "You have Entered an InValid score value";
  } else if (score >= 80) {
    _grade = "A";
  } else if (score >= 60) {
    _grade = "B";
  } else if (score >= 50) {
    _grade = "C";
  } else if (score >= 40) {
    _grade = "D";
  } else {
    _grade = "E";
  }

  return "Your grade for $subject is $_grade";
}
