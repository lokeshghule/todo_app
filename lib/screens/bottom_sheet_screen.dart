import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class BottomSheetScreen extends StatefulWidget {
  void Function(Task) addTask;
  BottomSheetScreen({required this.addTask});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  String newTaskName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              autofocus: true,
              onChanged: (newval) {
                newTaskName = newval;
                // print(newTaskName);
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                widget.addTask(Task(name: newTaskName));
                Navigator.pop(context);

                // print(newTaskName);
              },
              child: Text('Add'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent, elevation: 0.0),
            ),
          ],
        ),
      ),
    );
  }
}
