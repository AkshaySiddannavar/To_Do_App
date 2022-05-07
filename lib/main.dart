import 'package:flutter/material.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:todo_app/models/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [];
    return MaterialApp(
      home: TasksScreen(
        initialList: tasks,
      ),
    );
  }
}
