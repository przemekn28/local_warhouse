import 'package:local_warhouse/model/item.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/category.dart';

class WarhouseDatabase {
  static final WarhouseDatabase instance = WarhouseDatabase._init();

  static Database? _database;

  WarhouseDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('local_warhouse.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableCategory (
  ${CategoryFields.id} $idType as $idType,
  ${CategoryFields.name} $textType as $textType,
  ${CategoryFields.items} null
)
''');

//${CategoryFields.items}
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
