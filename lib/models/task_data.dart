import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasksList = [
    Task(task: 'To buy milk',isDone: false ),
    Task(task: 'To buy break',isDone: false),
    Task(task: 'To eat',isDone: false),

  ];



  void addData(Task task){
    _tasksList.add(task);
    notifyListeners();
  }

  int getLength(){
    return _tasksList.length;
  }

  Task getTask (int index){
    return _tasksList[index];
  }

  void toggleCheck(int index){
    _tasksList[index].toggleCheck();
    notifyListeners();
  }
  void deleteTask(int index){
    _tasksList.removeAt(index);
    notifyListeners();
  }
}