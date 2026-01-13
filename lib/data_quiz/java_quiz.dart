import '../models/quiz.dart';
final List<Quiz> javaProgrammingQuizzes = [
  // ===== INTERMEDIATE LEVEL =====
  Quiz(
    question:
        "Which concept allows a class to inherit properties from another class?",
    options: ["Encapsulation", "Polymorphism", "Inheritance", "Abstraction"],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which keyword is used to prevent inheritance in Java?",
    options: ["static", "final", "private", "protected"],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which collection does not allow duplicate elements?",
    options: ["List", "Set", "ArrayList", "Vector"],
    correctIndex: 1,
  ),
  Quiz(
    question: "What is the default value of an int variable in Java?",
    options: ["0", "null", "undefined", "1"],
    correctIndex: 0,
  ),
  Quiz(
    question: "Which exception is checked at compile time?",
    options: [
      "NullPointerException",
      "ArithmeticException",
      "IOException",
      "ArrayIndexOutOfBoundsException",
    ],
    correctIndex: 2,
  ),

  // ===== ADVANCED LEVEL =====
  Quiz(
    question:
        "Which Java feature allows multiple methods with the same name but different parameters?",
    options: [
      "Method overriding",
      "Method overloading",
      "Inheritance",
      "Encapsulation",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which keyword is used to create a thread in Java?",
    options: ["thread", "run", "extends Thread", "implements Runnable"],
    correctIndex: 3,
  ),
  Quiz(
    question: "What does JVM stand for?",
    options: [
      "Java Variable Machine",
      "Java Virtual Machine",
      "Java Verified Machine",
      "Java Visual Machine",
    ],
    correctIndex: 1,
  ),
  Quiz(
    question: "Which memory area stores objects in Java?",
    options: ["Stack", "Method Area", "Heap", "Register"],
    correctIndex: 2,
  ),
  Quiz(
    question: "Which mechanism is used by garbage collection?",
    options: [
      "Reference counting",
      "Manual deletion",
      "Automatic memory management",
      "Pointer arithmetic",
    ],
    correctIndex: 2,
  ),
];
