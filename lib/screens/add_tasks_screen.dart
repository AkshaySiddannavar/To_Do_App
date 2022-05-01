import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(117, 117, 117, 1.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35.0,
            ),
          ),
          Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: Colors.lightBlueAccent,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  // backgroundColor: ,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
