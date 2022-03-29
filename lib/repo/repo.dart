import 'package:sqflite/sqflite.dart';
import 'package:task/repo/database.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repo() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;
  Future<Database?> get database async {
    if (_database == null) return _database;

    // _database = await _database?.setDatabase();
    return _database;
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection!.insert(table, data);
  }

  void setDatabase() {}
}
