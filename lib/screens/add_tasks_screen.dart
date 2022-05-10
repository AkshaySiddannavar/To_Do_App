import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class AddTasksScreen extends StatefulWidget {
  List<Task> listOfTasks = [];
  AddTasksScreen({required this.listOfTasks});

  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
  String currentText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(117, 117, 117, 1.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 20.0),
              onChanged: (enteredText) {
                currentText = enteredText;
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextButton(
            onPressed: () {
              //functionality
              setState(() {
                widget.listOfTasks.add(Task(text: currentText, isDone: false));
              });
              print('Printing list of tasks ${widget.listOfTasks.length}');
              Navigator.pop(context, widget.listOfTasks);
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
