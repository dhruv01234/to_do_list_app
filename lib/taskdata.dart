import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
class taskdata extends ChangeNotifier{
  List<Task> tasks = [];
  int get taskcount{
    return tasks.length;
  }
  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.done();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}