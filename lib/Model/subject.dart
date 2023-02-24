import 'package:flutter/material.dart';
import 'package:state_managements/View/Pages/home.dart';

class Subject {
  late String title;
  late Widget page;

  Subject({
    required this.title,
    required this.page,
  });
}

List<Subject> subjectListt = [
  Subject(title: "State Management", page: const HomePage()),
];
