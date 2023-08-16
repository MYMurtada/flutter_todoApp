import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_todo/models/tasks.dart';
import 'package:flutter_todo/screens/tasksScreen.dart';
import 'package:flutter_todo/CheckPoints/ListElement.dart';
import "package:flutter_todo/screens/addNewTaskScreen.dart";
import 'package:flutter_todo/models/taskData.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(label: "Buy Bags"),
    Task(label: "Buy Eggs"),
    Task(label: "Buy hen"),
    Task(label: "Buy app"),
  ];
//getter for task cont
  int get taskCount {
    return _tasks.length;
  }

//UnmodifiableListView to stop users from using .add() function on List
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

//add task
  addTask(String value) {
    final task = Task(label: value);
    _tasks.add(task);
    notifyListeners();
  }

//update task for instead of set state for chkbox
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

//delete task from list
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
