import 'package:flutter/material.dart';
import 'package:todo_app/models/all_task_data.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllTaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
