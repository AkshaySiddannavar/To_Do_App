import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/all_task_data.dart';

class Task {
  final String text;
  bool isDone;

  Task({this.text = 'dummy', this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
