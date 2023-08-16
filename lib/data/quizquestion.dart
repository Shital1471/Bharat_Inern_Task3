import 'package:quizapp/Model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "In which process, a local variable has the same name as one of the instance variables?",
    {
      "Serialization": false,
      "Variable Shadowing": true,
      "	Abstraction": false,
      "Multi-threading": false,
    },
  ),
  QuestionModel("Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?", {
    "javap tool": false,
    "javaw command": false,
    "	Javadoc tool": true,
    "javah command": false,
  }),
  QuestionModel("Which of the following is true about the anonymous inner class?", {
    "It has only methods": true,
    "Objects can't be created": false,
    "It has a fixed class name": false,
    "It has no class name": false,
  }),
  QuestionModel("Which of the following is not a Java features?", {
    "Dynamic": false,
    "Architecture Neutral": false,
    "Use of pointers": true,
    "Object-oriented":false,
  }),
  QuestionModel("The \ u0021 article referred to as a", {
    "Unicode escape sequence": true,
    "Octal escape": false,
    "Hexadecimal": false,
    "Line feed": false,
  }),
  QuestionModel(" _____ is used to find and fix bugs in the Java programs.", {
    "JVM": false,
    "JRE": false,
    "JDK": false,
    "JDB": true,
  }),
  QuestionModel(
      "Which of the following is a valid declaration of a char?", {
    "char ch = '/utea';": true,
    "char ca = 'tea';": false,
    "char cr = \u0223;": false,
    "char cc = '\itea';": false,
  }),
  QuestionModel("What is the return type of the hashCode() method in the Object class?", {
    "Object": false,
    "int": true,
    "long": false,
    "void": false,
  }),
  QuestionModel(
      "Which of the following is a valid long literal?",
      {
        "ABH8097": false,
        "L990023": false,
        "904423": false,
        "0xnf029L": true,
      }),
  QuestionModel(
      "What does the expression float a = 35 / 0 return?", {
    "0": false,
    "Not a Number": true,
    "Infinity": false,
    "Run time exception": false,
  }),
];
