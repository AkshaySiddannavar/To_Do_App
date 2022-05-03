import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:todo_app/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(text: 'Buy Milk', isDone: false),
    Task(text: 'Buy Choclate', isDone: false),
    Task(text: 'Buy Bread', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return TaskTile(
            title: tasks[index].text,
            isChecked: tasks[index].isDone,
            checkboxCallBack: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      }),
      itemCount: tasks.length,
    );
  }
}
