import 'package:flutter/material.dart';
import 'to_do_tile.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
class ToDoList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return ToDoTile(
                task: taskData.getTask(index).task,
                isCheck: taskData.getTask(index).isDone,
                index: index,);
          },
          itemCount: taskData.getLength(),
        );
      },

    );
  }
}

//  (checkboxState){
//  setState(() {
//  taskList[index].toggleCheck();
//  });
//
//  }
