

class Task{

  final String task;
   bool isDone;

  Task({this.task, this.isDone});

  void toggleCheck(){
    isDone =!isDone;
  }

}

