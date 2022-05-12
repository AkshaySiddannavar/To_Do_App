import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class AllTaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  void addTasks({String taskText = '', bool isChecked = false}) {
    _tasks.add(Task(text: taskText, isDone: isChecked));

    notifyListeners();
  }

  int getLength() {
    return _tasks.length;
  }

  void toggleTaskAt(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  String getTaskText(int index) {
    return _tasks[index].text;
  }

  bool getTaskCheck(int index) {
    return _tasks[index].isDone;
  }

  int getTasksLeft() {
    int numberOfTasksLeft = 0;
    for (int i = 0; i < _tasks.length; i++) {
      if (_tasks[i].isDone == false) {
        numberOfTasksLeft++;
      }
    }
    return numberOfTasksLeft;
  }

  void removeTask(int index) {
    final task = _tasks[index];
    _tasks.remove(task);
    notifyListeners();
  }
}
