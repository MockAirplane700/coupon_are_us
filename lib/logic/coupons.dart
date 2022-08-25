// this holds the list all coupons found in the application

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/persistence/mongo_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:tuple/tuple.dart';

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
   final List<CouponsObject> _list = [
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 0
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 1
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 20
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 21
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 22
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 23
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 25
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates:'49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 26
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 28
          )
      ),
      CouponsObject(
          networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
          name: 'Coupon 1',
          coordinates: '49.8951, 97.1384',
          store: Store(
              description: 'lorem ipsum',
              facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
              instagram: 'https://twitter.com/OutOfTheBlueWpg',
              location: 'https://www.instagram.com/outoftheblu/',
              name: 'Out of the Blue',
              networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
              twitter:'https://twitter.com/OutOfTheBlueWpg',
              website: 'https://outoftheblue.ca/',
              contactNumber: '+1-204-477–6489', storeId: 29
          )
      ),
    ];
   return _list;
  }//end get coupons iteration two

  // static Future<List<CouponsObject>> getCouponData() async{
  //  List<CouponsObject> results = [];
  //  //TODO: Create this instance once when the application runs for the first time
  //  //create an instance in the database
  //  FirebaseApp app  = await Firebase.initializeApp();
  //  FirebaseFirestore databaseInstance = FirebaseFirestore.instance;
  //  //read the test data
  //  await databaseInstance.collection("coupons").get().then((value) {
  //    for (var doc in value.docs) {
  //      Map<String, dynamic> map = doc.data();
  //      //create the relevant object here and add it to the list
  //      CouponsObject coupon = CouponsObject(
  //          networkImage: map['image'], name: map['name'], coordinates: map['coordinates'].toString(),
  //          //0: name, 1: description 2: location 3: image 4: contactNumber 5: website 6: facebook 7: twitter
  //          store: Store(
  //              description: (map['Store'])[1], facebook:  (map['Store'])[6],
  //              instagram:  (map['Store'])[8], location:  (map['Store'])[2],
  //              name:  (map['Store'])[0], networkImage:  (map['Store'])[3],
  //              twitter:  (map['Store'])[7], contactNumber:  (map['Store'])[4],
  //              website:  (map['Store'])[5]
  //          )
  //      );
  //      results.add(coupon);
  //      _listing.add(coupon);
  //    }
  //  });
  //
  //  return results as Future<List<CouponsObject>>;
  // }


}

// void main() {
//   ListingOfCoupons.getCouponData();
// }