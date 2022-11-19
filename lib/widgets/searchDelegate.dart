// todo: create a search delegate to search for coupons and stores

import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate{
  int indexValue = 0;
  final List _list = ListingOfCoupons.fetchData();

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear)
    )
  ];

  @override
  Widget? buildLeading(BuildContext context) =>IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back)
  );

  @override
  Widget buildResults(BuildContext context) => _list.isNotEmpty ? ListTile(
    leading: Image.network(_list[indexValue].networkImage),
    title: Text(_list[indexValue].name),
    subtitle: Text('Store: ' + _list[indexValue].store.name),
    onTap: () {
      //go the view coupon page
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewCoupon(couponsObject:_list[indexValue])));
    },
  ) : ListTile(title: Center(child: Text('Could not find $query')),) ;

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestions = _list.where((item) {
      final itemNameComparison = item.name.toLowerCase();
      final itemStoreNameComparison = item.store.name.toLowerCase();
      final input = query.toLowerCase();
      return itemStoreNameComparison.contains(input) || itemNameComparison.contains(input);
    }).toList();

    return ListView.builder(
        itemBuilder: (context, index) {
          if (suggestions.isEmpty){
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                Text('Data not currently available please wait')
              ],
            ),);
          }else{
            return ListTile(
              leading: Image.network(suggestions[index].networkImage),
              title: Text(suggestions[index].name),
              subtitle: Text('Store: ' + suggestions[index].store.name),
              onTap: () {
                query = suggestions[index].name;
                showResults(context);
              },
            );
          }
        },
      itemCount: suggestions.length,
    );
  }
  
}