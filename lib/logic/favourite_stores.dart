import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/persistence/sql_database.dart';

class FavouriteStoresListing {

  static Future getFavouriteStores() async{
    return DatabaseManager.getStores();
  }//end get favourite stores

  static Future deleteStore(Store store) async {
   return await DatabaseManager.deleteStore(store);
  }//end delete store

  static Future insertStore(Store store) async {
    return await DatabaseManager.insertStore(store);
  }//end insert store
}//end favourite stores