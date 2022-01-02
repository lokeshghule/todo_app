import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> taskList = [];
  TasksList({required this.taskList});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.taskList[index].name,
          toggleCheckBox: (newCheckValue) {
            setState(() {
              widget.taskList[index].toggleDone();
            });
          },
          isChecked: widget.taskList[index].isDone,
        );
      },
      itemCount: widget.taskList.length,
    );
  }
}
