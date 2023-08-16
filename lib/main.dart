import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/tasksScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/models/taskData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
