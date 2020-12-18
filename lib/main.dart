import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todoey',
        home: TaskScreen(),
      ),
    );
  }
}