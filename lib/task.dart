class Task{
  String task;
  bool isDone;
  Task({required this.task, this.isDone=false});
  void done(){
    isDone = !isDone;
  }
}
