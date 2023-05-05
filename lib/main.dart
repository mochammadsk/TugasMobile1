import 'package:flutter/material.dart';
import 'package:curriculum_vitae/home.dart';
import 'package:curriculum_vitae/grade.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mochammadsk",
      home: Home(),
    );
  }
}
