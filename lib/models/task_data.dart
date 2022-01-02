import 'package:flutter/material.dart';
import 'task.dart';

class taskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: 'tatakae'),
    Task(name: 'give on your dream and die'),
    Task(name: "shinzou sasageyo"),
  ];

  int get taskCount {
    return taskList.length;
  }
}
