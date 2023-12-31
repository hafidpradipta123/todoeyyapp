import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final Function checkboxCallback;


  const TaskTile({super.key, required this.isChecked, required this.taskTitle, required this.checkboxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null ),),
      trailing:Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:(newValue) =>  checkboxCallback(newValue)

      )

    );
  }
}



// (bool? checkboxState){
// setState(() {
// isChecked = checkboxState ?? true;
// });