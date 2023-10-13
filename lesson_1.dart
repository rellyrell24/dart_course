// Introductions
// Online Lesson
// Lecture: Tuesdays and Thursdays
// Instructor: JLG Technology
// www.jlg.technology/#/students

// Objectives:
// - Understand the role of Dart in web development
// - Learn how to set up a Dart environment
// - Explore basic Dart syntax and concepts
// - Create a simple web application using Dart

// Dart SDK Setup - 7:47

void main() {
  // Dart Syntax 8:13
  // Variables
  var name = "John";
  var age = 30;

  // Data types
  var trueValue = true;
  var falseValue = false;
  var aList = [1, 2, 4, 5];
  var stringList = ["cat", "dog", "elephant"];
  var boolList = [true, false, true];
  var aMap = {
    "key1": trueValue,
    "key2": name,
    "key3": age,
    "key4": stringList,
    "key5": boolList,
    "key6": aList,
    "key7": falseValue
  };
  var aNull = Null;

  // Operator
  int x = 10;
  int y = 5;

  int sum = x + y;
  int difference = x - y;
  int product = x * y;
  double quotient = x / y;

  bool isEqual = x == y;
  bool isNotEqual = x != y;
  bool isGreater = x > y;
  bool isLessor = x < y;
  bool isLessOrEqual = x <= y;
  bool isGreaterOrEqual = x >= y;

  bool isTrue = true;
  bool isFalse = false;
  bool andResult = isTrue && isFalse;
  bool orResult = isFalse || isTrue;
  bool notResult = !isFalse;

  int z = x;
  z += 5;
  z -= 10;
  z *= 2;

  // Coding Example
  name = "Alice";
  age = 25;
  double height = 5.8;
  bool isStudent = true;
  List<String> hobbies = [
    "Reading",
    "Painting",
    "Programming",
    "Dog walking",
    "Clean"
  ];
  Map<String, dynamic> person = {
    "name": name,
    "age": age,
    "height": height,
    "student": isStudent,
    "hobbies": hobbies,
    "dob": DateTime(1995, 5, 24),
    "ssn": "123-123-1233",
    "is21Over": false
  };

  for (var key in person.keys) {
    if (key == "hobbies") {
      List<String> hobbyList = person[key];
      for (var i = 0; i < hobbyList.length; i += 1) {
        print("hobby #${i + 1}: ${hobbyList[i]}");
      }
      continue;
    }
    print("$key: ${person[key]}");
  }

  // Break (10 mins) 8:23

  // Build Web App
}

// Wrap-up
