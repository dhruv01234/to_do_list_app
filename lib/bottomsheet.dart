import 'package:flutter/material.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'taskdata.dart';

class slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newtasktitle='';
    return SafeArea(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Add Task',
                  style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  autofocus: false,
                  onChanged: (newtask) {
                          newtasktitle = newtask;
                  },
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 220,
                color: Colors.lightBlueAccent,
                child: TextButton(
                  autofocus: true,
                  onPressed: (){
                   final newtask = Task(task: newtasktitle);
                   Provider.of<taskdata>(context,listen: false).addTask(newtask);
                   Navigator.pop(context);
                  },
                  // style: ButtonStyle(backgroundColor: MaterialStateColor<Color ),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
