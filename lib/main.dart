import 'package:flutter/material.dart';
import 'package:same/add_task.dart';
import 'package:same/home_page.dart';
import 'package:same/edit_task.dart';
import 'package:same/completed_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      home: completedTask(),
    );
  }
}
