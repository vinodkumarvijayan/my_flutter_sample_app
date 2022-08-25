import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _dbName = "aspire.db";
  static const _dbVersion = 1;
  static const _tableName = "employee";
  static const columnId = "_id";
  static const columnName = "eName";

  //Singleton Object Creation of database
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  //For handling Async Operation
  Future<Database> get database async {
    if (_database != null) {
      print("Database Path:> $_database");
      return _database!;
    } else {
      _database = await _initialDatabase();
      return _database!;
    }
  }

  _initialDatabase() async {
    //Get path to a application directory
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    // print("Database Path:> $path");
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) {
    db.execute('''CREATE TABLE $_tableName(
    $columnId INTEGER PRIMARY KEY,
    $columnName TEXT NOT NULL)''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_tableName);
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(_tableName, row, where: '$columnId=?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(_tableName, where: '$columnId=?', whereArgs: [id]);
  }
}
