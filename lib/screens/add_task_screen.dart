import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {



  String addedTask;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),


      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent))),
                onChanged:(value){
                  addedTask = value;

                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed:(){
                  Provider.of<TaskData>(context,listen: false).addData(Task(task: addedTask,isDone: false));
                  Navigator.pop(context);

                },child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
