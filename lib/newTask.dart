import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120.0,

        child: Column(children: [
          TextField(
            decoration: InputDecoration,
          ),

        ],),
      ),
    );
  }
}
