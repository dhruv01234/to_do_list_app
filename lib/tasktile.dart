import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  TaskTile({required this.tasktitle,required this.isCheck,required this.callback,required Function this.longpress});
  @override
  Function callback;
  Function longpress;
  bool isCheck;
  String tasktitle;
  Widget build(BuildContext context) {
    return ListTile(
onLongPress:(){
  longpress();
},
      leading: Text(tasktitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,decoration: isCheck?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        value: isCheck,
        onChanged: (cal){
         callback(cal);
        },

        activeColor: Colors.lightBlueAccent,
      )
    );
  }
}
