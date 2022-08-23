import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  const TableDemo({super.key});

  static const String routeName = '/tabledemo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Table Demo")),
            body: ListView(
              children: [
                Center(
                    child: Text(
                  'Data Matrix',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                DataTable(columns: [
                  DataColumn(
                      label: Text('Id',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Name',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Profession',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text("Stephen")),
                    DataCell(Text('Actor'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text("Steve")),
                    DataCell(Text('Leader'))
                  ])
                ])
              ],
            )));
  }
}
