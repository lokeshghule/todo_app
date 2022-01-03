import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(builder: (context, value, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: value.getTaskname(index),
            toggleCheckBox: (newCheckValue) {
              value.UpdateTask(value.TasksList[index]);
            },
            isChecked: value.getIsChecked(index),
            deleteCallBack: () {
              value.DeleteTask(value.TasksList[index]);
            },
          );
        },
        itemCount: value.taskCount,
      );
    });
  }
}
