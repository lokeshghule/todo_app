import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'task.dart';

class taskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'tatakae'),
    Task(name: 'give on your dream and die'),
    Task(name: "shinzou sasageyo"),
  ];

  int get taskCount {
    return _taskList.length;
  }

  String getTaskname(int index) {
    return _taskList[index].name;
  }

  bool getIsChecked(int index) {
    return _taskList[index].isDone;
  }

  UnmodifiableListView<Task> get TasksList {
    return UnmodifiableListView(_taskList);
  }

  void toggleDone(int index) {
    _taskList[index].toggleDone();
  }

  void addTask(String name) {
    _taskList.add(Task(name: name));
    notifyListeners();
  }

  void UpdateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void DeleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
