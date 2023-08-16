import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/tasks.dart';
import 'ListElement.dart';
import "package:flutter_todo/screens/addNewTaskScreen.dart";
import 'package:flutter_todo/models/taskData.dart';

class TasksList extends StatelessWidget {
  TasksList({required this.tasks});

  List<Task> tasks = [
    Task(label: "Buy Bags"),
    Task(label: "Buy Eggs"),
    Task(label: "Buy hen"),
    Task(label: "Buy app"),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount, //widget.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.label,
                isChecked: task.isDone,
                checkBoxCallback: (checkBoxState) {
                  taskData.updateTask(task);
                  // setState(() {
                  //   Provider.of<TaskData>(context)
                  //       .tasks[index]
                  //       .toggleDone(); //= checkBoxState ?? true;
                  // });
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
    // ListView(
    //   children: [
    //     // TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //     // TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //     // TaskTile(taskTitle: tasks[3].name, isChecked: tasks[3].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //   ],
    // );
  }
}
