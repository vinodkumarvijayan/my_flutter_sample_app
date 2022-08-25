import 'package:flutter/material.dart';
import 'package:my_flutter_sample_app/routes/pageroutes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "Drawer Header Text",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                )),
            const ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            const ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.mail),
            ),
            const ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_phone),
            ),
            ListTile(
              title: const Text("Table Demo"),
              leading: Icon(Icons.table_bar),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pushReplacementNamed(context, PageRoutes.tableDemo);
              },
            ),
            const ListTile(
              title: Text("Stateful Demo"),
              leading: Icon(Icons.battery_full),
            ),
            const Divider(
              height: 0.2,
            )
          ],
        ));
  }
}
