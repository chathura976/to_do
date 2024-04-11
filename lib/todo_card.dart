import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoCard({super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25,),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            Checkbox(value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
            ),

            Text(taskName,
            style: TextStyle(decoration:taskCompleted? TextDecoration.lineThrough: TextDecoration.none),),
          ],
        ),
        decoration: BoxDecoration(color:Colors.yellow ,
        borderRadius: BorderRadius.circular(12.0)
        ),
      ),
    );
  }
}
