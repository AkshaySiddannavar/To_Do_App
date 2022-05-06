import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:todo_app/models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> listOfTasksToPrintOnScreen = [];
  TasksList({required this.listOfTasksToPrintOnScreen});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TaskTile(
            title: widget.listOfTasksToPrintOnScreen[index].text,
            isChecked: widget.listOfTasksToPrintOnScreen[index].isDone,
            checkboxCallBack: (checkboxState) {
              setState(() {
                widget.listOfTasksToPrintOnScreen[index].toggleDone();
              });
            });
      }),
      itemCount: widget.listOfTasksToPrintOnScreen.length,
    );
  }
}
