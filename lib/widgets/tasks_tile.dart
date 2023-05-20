import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallBack, required this.onLongPressCallBack});

  final bool isChecked;
final String taskTitle;
final Function(bool?) checkboxCallBack;
final Function() onLongPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallBack,
      title: Text(taskTitle,
        style: TextStyle(
            decoration: isChecked?TextDecoration.lineThrough:null
        ),),
      trailing: Checkbox(value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
      )
      );
  }
}


// (bool? checkboxState){
// setState(() {
// isChecked= checkboxState ?? false;
// });
//
// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox({required this.checkboxState, required this.toggleCheckBoxState});
//
//   final bool checkboxState ;
//   final Function(bool?)? toggleCheckBoxState;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
//
//
// }
