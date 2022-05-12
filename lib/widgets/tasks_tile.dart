import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final void Function(bool?)? checkboxCallBack;
  final void Function()? longPressCallback;

  const TaskTile(
      {Key? key,
      this.isChecked = false,
      this.title = '',
      this.checkboxCallBack,
      this.longPressCallback})
      : super(key: key);

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
        onChanged: checkboxCallBack,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: longPressCallback,
    );
  }
}
