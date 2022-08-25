import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String message;

  // SecondScreen(this.message, {Key? key}) : super(key: key);
  SecondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second screen")),
      body: Center(
        child: RaisedButton(
          child: Text("Go back: $message"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
