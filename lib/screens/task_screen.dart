import 'package:flutter/material.dart';
import 'package:todo_app/widgets/to_do_list.dart';
import 'add_task_screen.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/to_do_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,tasks,child){
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  context: context,
                  builder: (BuildContext context) => AddTaskScreen(

                  ));
            },
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: Icon(
                          Icons.list,
                          color: Colors.lightBlueAccent,
                          size: 30.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      '${tasks.getLength().toString()} Tasks' ,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child:  ToDoList(),
                  ),
                ),
              )
            ],
          ),
        );
      },

    );
  }
}
