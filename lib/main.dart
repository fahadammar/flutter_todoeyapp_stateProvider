import 'package:flutter/material.dart';
import 'package:flutter_state_provider/model/task_data.dart';

// External Widget
import 'package:flutter_state_provider/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'model/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TasksScreen(),
      ),
    );
  }
}


