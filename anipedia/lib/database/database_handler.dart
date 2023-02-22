
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHandler {

  static final DatabaseHandler _databaseHandler=DatabaseHandler._internal();
  static Database? _database;

  factory DatabaseHandler(){
    return _databaseHandler;
  }

  DatabaseHandler._internal();

  Future<Database?> openDB()async{
    _database=await openDatabase(
      join(await getDatabasesPath(),'demo.db')
    );
    return _database;
  }
}