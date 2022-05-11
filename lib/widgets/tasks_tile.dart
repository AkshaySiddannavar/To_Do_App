import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/all_task_data.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final void Function(bool?)? checkboxCallBack;

  TaskTile({this.isChecked = false, this.title = '', this.checkboxCallBack});

  // void checkboxCallBack(bool? checkboxState) {
  //     isChecked = ((checkboxState == true) ? true : false);
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration:
              (isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallBack, //(input) {}, //toggleCheckbox,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
