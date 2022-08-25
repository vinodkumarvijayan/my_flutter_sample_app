import 'package:flutter/material.dart';
import 'package:my_flutter_sample_app/drawerdemo.dart';

import 'localdb/DatabaseHelper.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Bar")),
      drawer: const MyDrawer(),
      body: Center(child: InkWell(
        onTap: () async {
          int i = await DatabaseHelper.instance
              .insert({DatabaseHelper.columnName: "Kavya"});

          print("Inserted: $i");

          Future<List<Map<String, dynamic>>> queryRows =
              DatabaseHelper.instance.queryAll();
          print(queryRows);
        },
      )),
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
