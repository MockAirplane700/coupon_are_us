// this holds the list all coupons found in the application

import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/persistence/mongo_database.dart';

class ListingOfCoupons {



  static List<CouponsObject> _listing = [];
  static List<CouponsObject> result = [];
  static List coupons = [];

  static List<CouponsObject> fetchData() {return _listing;}


  static void setData(List<dynamic> list) {
    _listing.clear();
    List<CouponsObject> results = [];
    for (var value in list) {
      CouponsObject couponsObject = CouponsObject(
          networkImage: value.networkImage, name: value.name,
          coordinates: value.coordinates, store: value.store);
      results.add(couponsObject);
    }
    _listing.addAll(results);
  }

  static Future<List> getCoupons() async {
    return MongoDatabase.getCoupons();
  }//end get coupons

  static List getCouponsIterationTwo() {

    getCoupons().then((value) {
    for (var element in value) {
      coupons.add(element);
    }});

    for (var value1 in coupons) {
      result.add(value1);
    }
    return result;
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