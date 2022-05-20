import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //obtain and initialize the list coupons
  final List<CouponsObject> _list = ListingOfCoupons.listOfCoupons();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons in the area'),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: backgroundApplicationColor,
      body: Center(
        child: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index){
            // NULL CHECK
            if (_list.isEmpty){
              // the list is empty they are no coupons present
              return Center(
                child: Column(
                  children: const [
                    CircularProgressIndicator(),
                    Text('They are currently no coupons listed please wait a moment', style: TextStyle(
                      fontSize: 25,
                      color: textColor
                    ),)
                  ],
                ),
              );
            }else{
              //list is not empty they are coupons present
              return Center(
                child: Card(
                  color: primaryColorCards,
                  child: Padding(padding: const EdgeInsets.all(5.0), child: Column(
                    children: [
                      Image.network(_list[index].networkImage),
                      SizedBox(height: MediaQuery.of(context).size.height/100,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(child: ElevatedButton(
                            child: Column(
                              children:const [
                                 Icon(Icons.library_books),
                                 Text('View coupon', style: TextStyle(color: textColor))
                              ],
                            ),
                            onPressed: () {
                              //go to a page to only view the one coupon to be scanned and send data to screen
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> ViewCoupon(networkImage: _list[index].networkImage,))
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: buttonColor,
                            )
                          )),
                          Flexible(child: ElevatedButton(
                            child: Column(
                              children:const [
                                Icon(Icons.store),
                                Text('View Store', style: TextStyle(color: textColor),)
                              ],
                            ),
                            onPressed: () {
                              //go to a page to view the store the coupon belongs to, send data to screen
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> ViewStore(
                                website: _list[index].store.website,
                                name: _list[index].store.name,
                                storeDescription: _list[index].store.description,
                                instagram: _list[index].store.instagram,
                                twitter: _list[index].store.twitter,
                                facebook: _list[index].store.facebook,
                                contactNumber: _list[index].store.contactNumber,
                                networkImage: _list[index].store.networkImage,
                              ))
                              );
                            },
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor,
                              )
                          )),
                        ],
                      )

                    ],
                  ),),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
