import 'package:flutter/material.dart';
import 'package:todey/bottomsheet.dart';
import 'package:todey/taskdata.dart';
import 'task_list.dart';
import 'package:provider/provider.dart';

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
            backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.list,color: Colors.lightBlueAccent,size: 35,
                    ),
                    backgroundColor: Colors.white,
                    radius: 28,
                  ),
                  SizedBox(height: 10,),
                  Text('Todey',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('${Provider.of<taskdata>(context).tasks.length} tasks',style: TextStyle(color: Colors.white,fontSize: 18),),
                  SizedBox(height: 5,),
                ],
              ),
            ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft: Radius.circular(18)),
                  ),
                  child: Task_list()
                ),
              ),

  ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context)=>slide()
          );
        },
            child: Icon(Icons.add),
          backgroundColor: Colors.lightBlueAccent,
        ),
          ),
    );
  }
}


