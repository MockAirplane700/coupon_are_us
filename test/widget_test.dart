// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'dart:convert';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:coupon_are_us/main.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  // test get object 
   test('Testing get object', () {
     expect(CouponsObject.getObject(""" '_id': {'\$oid': '63b43c6db222c4b4c6329d2c'}, 'name': 'Chicken Slice ','location': 'Slice Distributors , Slice Center, Number 47, Borrowdale Road, Harare, Zimbabwe ', 'networkImage': 'https://imagedelivery.net/gQ7S7Z8-BtbLifr4ylpgmA/bda9fd73-c242-4188-c77b-df5ab0dd6a00/public', 'description': 'Chicken slice is prepared with the freshest and local sourced ingredients. Only real chicken and top spices are used to create enriched, unique, highly flavoured taste to provide customers with deliciously affordable slice of the day meal. The chips do meet the standard of our succulent chicken being crisp, nicely cut potato strips tantalizing with a good mouthful. Allowing customers to enjoy real value of their money.', 'facebook': 'https://www.facebook.com/chickenslice/', 'twitter': 'https://twitter.com/ChickenSliceog', 'instagram': 'https://www.instagram.com/chicken_slice_zimbabwe/', 'website': 'https://chickenslice.com/', 'contactNumber': '+263 787202004'  """ ), Store(
         storeId: 0, description: 'Chicken slice is prepared with the freshest and local sourced ingredients. Only real chicken and top spices are used to create enriched, unique, highly flavoured taste to provide customers with deliciously affordable slice of the day meal. The chips do meet the standard of our succulent chicken being crisp, nicely cut potato strips tantalizing with a good mouthful. Allowing customers to enjoy real value of their money', facebook: 'https://www.facebook.com/chickenslice/',
         instagram: 'https://www.instagram.com/chicken_slice_zimbabwe',
         location: 'Slice Distributors , Slice Center, Number 47, Borrowdale Road, Harare, Zimbabwe',
         name: 'Chicken Slice',
         networkImage: 'https://imagedelivery.net/gQ7S7Z8-BtbLifr4ylpgmA/bda9fd73-c242-4188-c77b-df5ab0dd6a00/public', twitter: 'https://twitter.com/ChickenSliceog',
         contactNumber: '+263 787202004', website: 'https://chickenslice.com/'
     ));
   });

   test('try json decode', () {
     var variable = ''' { "name" : "Mthandazo"} ''';
     expect(jsonDecode(variable), {'name' : 'Mthandazo'});
   });
  
 
  
}
