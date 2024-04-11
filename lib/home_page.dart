import 'package:flutter/material.dart';
import 'package:to_do/todo_card.dart';
import 'package:to_do/newTask.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List toDoList =[
    ["Make Tutorials", false],
    ["Do Exercise", false]
  ];



  void checkBoxChanged(bool? value,int index){
     setState(() {
       toDoList[index][1] = !toDoList[index][1];

     });
  }

  void createNewTask(){
    showDialog(
        context: context,
        builder: (context){
          return NewTask();
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO-DO Never Miss'),
        centerTitle: true,
        backgroundColor: Colors.yellow[500],
        elevation: 7.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add) ,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder:(context, index) {
          return ToDoCard(taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value)=> checkBoxChanged(value,index),
          );
        },
      )

    );
  }
}
