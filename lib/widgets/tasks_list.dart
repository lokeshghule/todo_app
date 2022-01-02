import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(builder: (context, value, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: value.taskList[index].name,
            toggleCheckBox: (newCheckValue) {
              setState(() {
                value.taskList[index].toggleDone();
              });
            },
            isChecked: value.taskList[index].isDone,
          );
        },
        itemCount: value.taskCount,
      );
    });
  }
}
