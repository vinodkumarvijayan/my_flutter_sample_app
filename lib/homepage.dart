import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: RaisedButton(
          child: const Text("Second screen"),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
            Navigator.pushNamed(context, "/second");
          },
        ),
      ),
    );
  }
}
