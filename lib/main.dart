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
    List<Task> tasks = [
      Task(text: 'Buy Milk', isDone: false),
      Task(text: 'Buy Choclate', isDone: false),
      Task(text: 'Buy Bread', isDone: false),
    ];
    return MaterialApp(
      home: TasksScreen(
        initialList: tasks,
      ),
    );
  }
}
