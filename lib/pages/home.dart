import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/firebase_options.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/logic/stores.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:coupon_are_us/widgets/custom_drawer.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //obtain and initialize the list coupons
  List<CouponsObject> coupons = [];
  List<Store> stores = [];

  @override
  Widget build(BuildContext context) {
    // coupons = ListingOfCoupons.fetchData();
    // stores = StoreListing.fetchStore();
    stores = StoreListing.getStoresIterationTwo();
    coupons = ListingOfCoupons.getCouponsIterationTwo();
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
      drawer: const CustomDrawer(),
      backgroundColor: backgroundApplicationColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Stores', style: GoogleFonts.roboto(color: textColor, fontSize: 20),),
                ],
              ),
              const Divider(),
              //First list view that shows the stores
              Row(
                children: [
                  SizedBox(
                    // child: FutureBuilder(
                    //     builder: (context, snapshot) {
                    //       if (snapshot.hasData){
                    //         stores = snapshot.data as List<Store>;
                    //         return ;
                    //       }else{
                    //         return const Center(child: CircularProgressIndicator(),);
                    //       }//end if-else
                    //     },
                    //   future:Future(),//end builder
                    // ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            //go to the store page
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> ViewStore(store: stores[index],))
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(stores[index].networkImage,),
                              radius: MediaQuery.of(context).size.width/7,
                            ),
                          ),
                        );
                      },
                      itemCount: stores.length,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                  ),
                ],
              ),
              //Second list view that shows the coupons
              Row(
                children: [
                  Text('Coupons', style: GoogleFonts.roboto(color: textColor, fontSize: 20),),
                ],
              ),
              const Divider(),
              Padding(
                padding:EdgeInsets.all(MediaQuery.of(context).size.width/50),
                child: SizedBox(
                  // child: FutureBuilder(
                  //     builder: (context, snapshot) {
                  //       if (snapshot.hasData) {
                  //         coupons = snapshot.data as List<CouponsObject>;
                  //         return;
                  //       }else{
                  //         return const Center(child: CircularProgressIndicator(),);
                  //       }//if-else
                  //     },
                  //   future: ListingOfCoupons.getCouponsIterationTwo(),
                  // ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //go to coupon
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewCoupon(
                              couponsObject: coupons[index]
                          )));
                        },
                        child: Card(
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width/20))),
                          shadowColor: Colors.black54,
                          color: primaryColorCards,
                          elevation: 2,
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                  child: Image.network(coupons[index].networkImage),
                                ),
                                Row(
                                  children: [
                                    Text('Name: ${coupons[index].name}', style: const TextStyle(color: textColor),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Store name: ${coupons[index].store.name}', style: const TextStyle(color: textColor),),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: coupons.length,
                  ),
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
