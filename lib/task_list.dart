import 'package:flutter/material.dart';
import 'package:todey/task.dart';
import 'tasktile.dart';
import 'taskdata.dart';
import 'package:provider/provider.dart';
import '';
class Task_list extends StatefulWidget {
  @override
  State<Task_list> createState() => _Task_listState();
}

class _Task_listState extends State<Task_list> {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskdata>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context,index) {
                Task t = taskData.tasks[index];
          return TaskTile(tasktitle: t.task,
            isCheck: t.isDone,
            callback: (bool newValue){
                setState((){
                      t.done();
                });
            },
            longpress: () {
              taskData.deleteTask(t);
            }
          );
        },
          itemCount: taskData.taskcount,
        );
      },
    );
  }
}

