// this holds the list all coupons found in the application

import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/persistence/mongo_database.dart';

class ListingOfCoupons {



  static List<CouponsObject> _listing = [];

  static List<CouponsObject> fetchData() {return _listing;}


  static void setData(List<CouponsObject> list) {
    _listing = list;
  }

  static Future getCoupons() async {
    return MongoDatabase.getCoupons();
  }//end get coupons

  static List<CouponsObject> getCouponsIterationTwo() {
    return _listing;
  }//end get coupons iteration two

  static void addToCouponsSearchList(CouponsObject couponsObject){
    _listing.add(couponsObject);
  }

  static void reset() {
    _listing.clear();
  }
}

// void main() {
//   ListingOfCoupons.getCouponData();
// }