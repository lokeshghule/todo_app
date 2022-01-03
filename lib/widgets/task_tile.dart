import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) toggleCheckBox;
  final String taskName;
  final void Function() deleteCallBack;

  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.toggleCheckBox,
      required this.deleteCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallBack,
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
