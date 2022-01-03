import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:todo_app/models/task.dart';
import 'bottom_sheet_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  void addTasktoList(Task newTask) {
    // setState(() {
    //   taskList.add(newTask);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 60,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'TODO',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${Provider.of<taskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TasksList(
                  // taskList: Provider.of<TasksList>(context).taskList,
                  ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => BottomSheetScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
