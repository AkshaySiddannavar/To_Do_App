import 'package:flutter/material.dart';

class Task {
  final String text;
  bool isDone;

  Task({this.text = 'dummy', this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
