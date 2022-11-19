import 'dart:convert';

import 'package:http/http.dart' as http;


class Test {

  static void getCoupons() async {

    try {
      final response = await http.get(
          Uri.parse('https://couponsareus.ca/coupons')
      );
      print(response.body);
      print('====================================================================');
      print(jsonDecode(response.body));
      // final coupons = await couponsCollection.find().toList();
      // return jsonDecode(response.body);
    }catch (error){
      throw Exception(error.toString());
    } //end try catch
  }//end get coupons

  void main () {
    getCoupons();
  }


}