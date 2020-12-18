import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class ToDoTile extends StatelessWidget {
  final String task;

  final bool isCheck;
  final int index;

  ToDoTile({this.task, this.index,this.isCheck});



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListTile(
          onLongPress: (){
            taskData.deleteTask(index);

          },
          title: Text(
            task,
            style: TextStyle(
                decoration:
                isCheck ? TextDecoration.lineThrough : TextDecoration.none),
          ),
          trailing: Checkbox(value: isCheck, onChanged: (value){

            taskData.toggleCheck(index);
          }),
        );
      },

    );
  }
}
