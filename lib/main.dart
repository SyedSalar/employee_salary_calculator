import 'package:flutter/material.dart';
import 'package:salary_calculator/salarypage.dart';
import 'package:salary_calculator/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(home: MySalaryPage()));
  }
}
