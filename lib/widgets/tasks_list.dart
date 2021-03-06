import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/all_task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
