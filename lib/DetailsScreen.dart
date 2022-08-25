import 'package:flutter/material.dart';

import 'main.dart';

class DetailScreen extends StatelessWidget {
  final ToDo todo;

  const DetailScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(todo.title)),
        body: Center(
          child: Text(todo.description),
        ));
  }
}
