// this holds the list all coupons found in the application

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:flutter/foundation.dart';
import 'package:tuple/tuple.dart';

class ListingOfCoupons {

  static final List<CouponsObject> _list = [
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
    CouponsObject(
        networkImage: 'https://image.winudf.com/v2/image/Y291cG9uLmphY2suaW50aGVib3hfc2NyZWVuXzFfMTUyNzA0ODM4NF8wMjk/screen-1.jpg?h=355&fakeurl=1&type=.webp',
        name: 'Coupon 1',
        coordinates: const Tuple2<double,double>(49.8951, 97.1384),
        store: Store(
            description: 'lorem ipsum',
            facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
            instagram: 'https://twitter.com/OutOfTheBlueWpg',
            location: 'https://www.instagram.com/outoftheblu/',
            name: 'Out of the Blue',
            networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
            twitter:'https://twitter.com/OutOfTheBlueWpg',
            website: 'https://outoftheblue.ca/',
            contactNumber: '+1-204-477–6489'
        )
    ),
  ];


  // todo: use a sqlite database, local
 static List<CouponsObject> listOfCoupons() {
    return _list;
  }//end of method

 //TODO: READ DATA

  static void getCouponData() async{
   List<String> results = [];
   //TODO: Create this instance once when the application runs for the first time
   //create an instance in the database
   FirebaseFirestore databaseInstance = FirebaseFirestore.instance;
   //read the test data
   await databaseInstance.collection("test").get().then((value) {
     for (var doc in value.docs) {
       if (kDebugMode) {
         print("${doc.id}=> ${doc.data()}");
       }
     }
   });
   // return results;
  }


}

void main() {
  ListingOfCoupons.getCouponData();
}