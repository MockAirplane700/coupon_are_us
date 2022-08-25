import 'package:coupon_are_us/customObjects/store.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {
  static late Database _database;

  ///---------------------------------------------------------------------------
  ///
  ///   final int storeId;
  ///   final String name;
  ///   final String location;
  ///   final String networkImage;
  ///   final String description;
  ///   final String facebook;
  ///   final String twitter;
  ///   final String instagram;
  ///   final String website;
  ///   final String contactNumber;
  ///
  /// --------------------------------------------------------------------------
  static Future openDb() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), "savedStores.ddb"),
      version: 1,
      onCreate: (Database db, int version) async{
        await db.execute(
          "CREATE TABLE stores(storeId INTEGER PRIMARY KEY autoincrement,"
              "name TEXT, location TEXT, networkImage TEXT, description TEXT, facebook TEXT,"
              "twitter TEXT, instagram TEXT, website TEXT, contactNumber TEXT)"
        );
      }
    );
    return _database;
  }//end open db

  static Future insertStore(Store store) async{
    await openDb();
    try {
      return await _database.insert('stores', store.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    }catch (error) {
      throw Exception(error.toString());
    }//end try-catch
  }//end insert store

  static Future<List<Store>> getStores() async {
    final List<Map<String,dynamic>> maps = await _database.query('stores');

    return List.generate(maps.length, (index) {
      return Store(
          storeId: maps[index]['storeId'], description:maps[index]['description'] , facebook:maps[index]['facebook'] ,
          instagram: maps[index]['instagram'], location: maps[index]['location'], name: maps[index]['name'], networkImage: maps[index]['networkImage'],
          twitter: maps[index]['twitter'], contactNumber: maps[index]['contactNumber'], website: maps[index]['website']);
    }).toList();
  }//end get stores

  static Future<void> deleteStore(Store store) async {
    await openDb();
    await _database.delete('stores', where: "storeId = ?" , whereArgs: [store.storeId]);
  }//end delete store

  static Future<int> updateStore(Store store) async {
    await openDb();
    return await _database.update('stores', store.toJson(), where: "storeId = ?", whereArgs: [store.storeId]);
  }//end update store
}//end database manager