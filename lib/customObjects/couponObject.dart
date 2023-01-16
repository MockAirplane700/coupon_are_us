
import 'dart:convert';

import 'package:coupon_are_us/customObjects/store.dart';
import 'package:tuple/tuple.dart';

class CouponsObject {
  final String name;
  final String networkImage;
  final Store storeId;
  final String coordinates;


  CouponsObject({required this.networkImage, required this.name, required this.coordinates, required this.storeId});

  ///-----------------------------------------------------------------
///
///
///               Coupon json structure
///
/// --------------------------------------------------------------------
  CouponsObject fromJson(json) {
    Store store = Store(
        storeId: 0, description: '',
        facebook: '', instagram: '', location: '', 
        name: name, networkImage: networkImage, twitter: '', 
        contactNumber: '', website: '');
    return CouponsObject( name: json['name'],networkImage: json['networkImage'], storeId: getObject(json['storeId'] ) , coordinates: json['coordinates']);

  }//end from json

  static Store getObject( String string) {
    // string processing to json

    Map<String,dynamic> map = jsonDecode(string);

    return Store(
        storeId: int.parse('0'), description: map['description'],
        facebook: map['facebook'], instagram: map['instagram'], location: map['location'],
        name: map['name'], networkImage: map['networkImage'], twitter: map['twitter'],
        contactNumber: map['contactNumber'], website: map['website']);
  }//end get object

  Map<String,dynamic> toJson() {
    return {
      'name':name,
      'networkImage': networkImage,
      'store':storeId,
      'coordinates':coordinates
    };
  }

}//end coupons object