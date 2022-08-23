import 'package:flutter/material.dart';

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  String enteredtext = " ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
      children: [
        TextField(
          onChanged: (value) {
            setState(() {
              enteredtext = value;
            });
          },
        ),
        Text(enteredtext)
      ],
    ))));
  }
}
