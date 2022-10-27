import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static DbCollection couponsCollection = DbCollection(Db('couponsAreUs'), 'coupons');
  static DbCollection storesCollection = DbCollection(Db('couponsAreUs'), 'stores');
  static Db database = Db('couponsAreUs');
  static Db databaseStores = Db('couponsAreUs');

  static connect() async {
    database = await Db.create(mongoApi);
    await database.open();
    couponsCollection = database.collection('coupons');
  }//end connect

  static connectStores() async {
    databaseStores = await Db.create(mongoApi);
    await databaseStores.open();
    storesCollection = databaseStores.collection('stores');
  }//end connect

  static Future<List<Map<String,dynamic>>> getCoupons() async {
    try {
      final coupons = await couponsCollection.find().toList();
      return coupons;
    }catch (error) {
      throw Exception(error.toString());
    } //end try catch
  }//end get coupons

  static Future<List<Map<String,dynamic>>> getStores() async {
    try {
      final stores = await storesCollection.find().toList();
      return stores;
    }catch (error) {
      throw Exception(error.toString());
    }//end try catch
  }//end get stores

}//end mongo database