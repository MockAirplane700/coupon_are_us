import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //obtain and initialize the list coupons
  final Future<List<CouponsObject>> _testList = ListingOfCoupons.getCouponData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons in the area'),
        backgroundColor: primaryAppBarColor,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search)
          )
        ],
      ),
      backgroundColor: backgroundApplicationColor,
      body: Center(
        child: StreamBuilder(
            builder: (BuildContext context, AsyncSnapshot<List<CouponsObject>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting){
                return const Center(child: CircularProgressIndicator(),);
              }else if (snapshot.connectionState == ConnectionState.done) {
                List<CouponsObject> coupons = snapshot.data as List<CouponsObject>;
                return ListView.builder(
                  itemCount: coupons.length,
                  itemBuilder: (context, index){
                    // NULL CHECK
                    if (coupons.isEmpty){
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
                              Image.network(coupons[index].networkImage),
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
                                        MaterialPageRoute(builder: (context)=> ViewCoupon(networkImage: coupons[index].networkImage,))
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
                                        website: coupons[index].store.website,
                                        name: coupons[index].store.name,
                                        storeDescription: coupons[index].store.description,
                                        instagram: coupons[index].store.instagram,
                                        twitter:coupons[index].store.twitter,
                                        facebook: coupons[index].store.facebook,
                                        contactNumber: coupons[index].store.contactNumber,
                                        networkImage: coupons[index].store.networkImage,
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
                      Stream<List<CouponsObject>> result  = _testList.asStream();
                      return Center(child: Text(_testList.toString()),);
                    }
                  },
                );
              }else{
                return Text(snapshot.error.toString());
              }//end if-else
            },
          stream: _testList.asStream(),
        ),

      ),
    );
  }
}
