import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title = '';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Buy Milk'),
      trailing: Checkbox(value: false, onChanged: (newValue) {}),
    );
  }
}
