import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';
import 'main.dart';

class ToDoScreen extends StatelessWidget {
  List<ToDo> listTodo;

  ToDoScreen({super.key, required this.listTodo});

  // ToDoScreen(this.listTodo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo List")),
      body: ListView.builder(
        itemCount: listTodo.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listTodo.elementAt(index).title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(todo: listTodo[index])));
            },
          );
        },
      ),
    );
  }
}
