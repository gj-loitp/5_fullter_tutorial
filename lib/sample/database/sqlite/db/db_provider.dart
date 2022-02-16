import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../model/client_model.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  String dbName = "TestDB.db";
  String tableNameClient = "Client";

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $tableNameClient ("
          "id INTEGER PRIMARY KEY,"
          "first_name TEXT,"
          "last_name TEXT,"
          "blocked BIT"
          ")");
    });
  }

  addClient(Client newClient) async {
    final db = await (database);
    if (db == null) {
      return;
    }
    //get the biggest id in the table
    var table =
        await db.rawQuery("SELECT MAX(id)+1 as id FROM $tableNameClient");
    int? id = table.first["id"] as int?;
    //insert to the table using the new id
    var raw = await db.rawInsert(
        "INSERT Into $tableNameClient (id,first_name,last_name,blocked)"
        " VALUES (?,?,?,?)",
        [id, newClient.firstName, newClient.lastName, newClient.blocked]);
    return raw;
  }

  blockOrUnblock(Client client) async {
    final db = await (database);
    if (db == null) {
      return;
    }
    Client blocked = Client(
        id: client.id,
        firstName: client.firstName,
        lastName: client.lastName,
        blocked: !client.blocked!);
    var res = await db.update("$tableNameClient", blocked.toMap(),
        where: "id = ?", whereArgs: [client.id]);
    return res;
  }

  updateClient(Client newClient) async {
    final db = await (database);
    if (db == null) {
      return;
    }
    var res = await db.update("$tableNameClient", newClient.toMap(),
        where: "id = ?", whereArgs: [newClient.id]);
    return res;
  }

  getClientById(int id) async {
    final db = await (database);
    if (db == null) {
      return;
    }
    var res =
        await db.query("$tableNameClient", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? Client.fromMap(res.first) : null;
  }

  Future<List<Client>> getBlockedClients() async {
    final db = await (database);
    if (db == null) {
      return List.empty();
    }

    print("works");
    // var res = await db.rawQuery("SELECT * FROM $tableNameClient WHERE blocked=1");
    var res = await db
        .query("$tableNameClient", where: "blocked = ? ", whereArgs: [1]);

    List<Client> list =
        res.isNotEmpty ? res.map((c) => Client.fromMap(c)).toList() : [];
    return list;
  }

  Future<List<Client>> getAllClients() async {
    final db = await (database);
    if (db == null) {
      return List.empty();
    }
    var res = await db.query("$tableNameClient");
    List<Client> list =
        res.isNotEmpty ? res.map((c) => Client.fromMap(c)).toList() : [];
    return list;
  }

  deleteClientById(int? id) async {
    final db = await (database);
    if (db == null) {
      return;
    }
    return db.delete("$tableNameClient", where: "id = ?", whereArgs: [id]);
  }

  deleteAllDb() async {
    final db = await (database);
    if (db == null) {
      return;
    }
    db.rawDelete("Delete * from $tableNameClient");
  }
}
