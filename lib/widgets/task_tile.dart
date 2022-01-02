import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) toggleCheckBox;
  final String taskName;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}
