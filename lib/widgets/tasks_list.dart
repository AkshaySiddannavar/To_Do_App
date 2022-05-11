import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/all_task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  TasksList();

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    print('tasks_lists is being callllled');
    print('list of tasks');

    return Consumer<AllTaskData>(
      builder: ((context, value, child) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            return TaskTile(
              title: value.getTaskText(index),
              isChecked: value.getTaskCheck(index),
              checkboxCallBack: (checkboxState) {
                value.toggleTaskAt(index);
              },
              longPressCallback: () {
                print('long press triggered');
                value.removeTask(index);
              },
            );
          }),
          itemCount: value.getLength(),
        );
      }),
    );
  }
}
