import 'package:flutter/material.dart';
import 'package:my_flutter_sample_app/drawerdemo.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Bar")),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('My Page!'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8.0,
        child: const Icon(Icons.add),
        onPressed: () {
          print("Hello world");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "User profile")
      ]),
    );
  }
}
