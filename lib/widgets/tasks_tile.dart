import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  final String title = '';
  bool isChecked = false;

  void checkboxCallBack(bool? checkboxState) {
    setState(() {
      isChecked = ((checkboxState == true) ? true : false);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build of list');
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
          decoration:
              (isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckbox: checkboxCallBack,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final void Function(bool?)? toggleCheckbox;

  TaskCheckbox({this.checkboxState = false, this.toggleCheckbox});

  void abc() {}
  @override
  Widget build(BuildContext context) {
    print('build of taskkkkkkk');
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckbox,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
