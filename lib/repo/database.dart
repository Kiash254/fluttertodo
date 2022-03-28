import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  serDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_todolis');
    var database =
        await openDatabase(path, version: 1, onCreate: _oncreatingDatabase);
    return database;
  }

  _oncreatingDatabase(Database database, int version) async {
    await database.execute(
        'CREATE TABLE categories(id INTEGER PRIMARY KEY name text,decription text,store number intger ,orederd by text,phone number int  )');
  }
}
