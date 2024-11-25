// class ProgrammingSkillsContents {
//   static const String programmingSkillTitle = "Programing Skills";
//   static const List<Map<String, dynamic>> programmingContent = [
//     {
//       "title": "Dart Proficiency",
//       "percent ": "70",
//     },
//     {
//       "title": "Object-oriented Programming",
//       "percent ": "80",
//     },
//     {
//       "title": "Asynchronous Programming",
//       "percent ": "75",
//     },
//     {
//       "title": "Flutter Framework Expertise",
//       "percent ": "80",
//     },
//     {
//       "title": "Widgets and UI construction",
//       "percent ": "80",
//     },
//     {
//       "title": "State Management techniques",
//       "percent ": "85",
//     },
//   ];
// }

import 'package:flutter/material.dart';

class ProgrammingSkillsContents {
  static const String programmingSkill = "Programming Skills";

  List<Map<String, dynamic>> programmingContent = [
    {
      "title": "Dart Programming",
      "description":
          "Strong grasp of Dart syntax, principles, and its extensive libraries for building efficient apps.",
      "percent": "70",
      "icon": Icons.code,
    },
    {
      "title": "Object-Oriented Programming (OOP)",
      "description":
          "In-depth knowledge of OOP principles such as inheritance, polymorphism, and encapsulation, applied across projects.",
      "percent": "85",
      "icon": Icons.settings_suggest,
    },
    {
      "title": "Asynchronous Programming",
      "description":
          "Expertise in handling Futures, Streams, and async-await for responsive and non-blocking code.",
      "percent": "75",
      "icon": Icons.timelapse,
    },
    {
      "title": "Flutter Development",
      "description":
          "Proficient in building cross-platform mobile, web, and desktop apps with Flutter and its widget ecosystem.",
      "percent": "80",
      "icon": Icons.flutter_dash,
    },
    {
      "title": "UI/UX Design & State Management",
      "description":
          "Skilled in constructing elegant UIs and managing state using Provider, BLoC, and Riverpod.",
      "percent": "80",
      "icon": Icons.design_services,
    },
    {
      "title": "Performance Optimization",
      "description":
          "Optimizes apps for efficient memory usage, faster load times, and smooth animations.",
      "percent": "85",
      "icon": Icons.speed,
    },
  ];
}
