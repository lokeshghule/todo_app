import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void toggleCheckBox(bool? newValue) {
    setState(() {
      isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'dis iz a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        toggleCheckBox: toggleCheckBox,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) toggleCheckBox;

  TaskCheckBox({required this.isChecked, required this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckBox,
    );
  }
}
