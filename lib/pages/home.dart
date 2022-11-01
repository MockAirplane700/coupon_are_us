import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/logic/stores.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:coupon_are_us/widgets/custom_drawer.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';
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
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    // set searches to zero



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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(height/80),
                      child: Text('Stores', style: GoogleFonts.roboto(color: textColor, fontSize: 20),),
                    ),
                  ],
                ),
                const Divider(),
                //First list view that shows the stores
                Row(
                  children: [
                    SizedBox(
                      child: FutureBuilder(
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              List _stores = snapshot.data as List<Map<String,dynamic>>;
                              // check to see if populated
                              if (_stores.isEmpty) {
                                return const Center(child: Text('No stores present currently'),);
                              }else{
                                StoreListing.reset();
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    Store store = Store(
                                        storeId: 0, description: '',
                                        facebook: '', instagram: '',
                                        location: '', name: '', networkImage: '',
                                        twitter: '', contactNumber: '',
                                        website: '');
                                    Store _store = store.fromJson(_stores[index]);
                                    // todo: add to search list
                                    StoreListing.addToSearch(_store);
                                    return InkWell(
                                      onTap: () {
                                        //go to the store page
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=> ViewStore(store: _store,))
                                        );
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                        child: Padding(
                                          padding: EdgeInsets.all(width/500),
                                          child: CircleAvatar(
                                            backgroundColor: circleAvatarBackgroundColor,
                                            backgroundImage: NetworkImage(_store.networkImage,),
                                            radius: MediaQuery.of(context).size.width/7,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: _stores.length,
                                );
                              }//end if else
                            }else{
                              return const Center(child: CircularProgressIndicator(),);
                            }//end if-else
                          },
                        future: StoreListing.getStores(),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/5,
                    ),
                  ],
                ),
                //Second list view that shows the coupons
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(height/80),
                      child: Text('Coupons', style: GoogleFonts.roboto(color: textColor, fontSize: 20),),
                    ),
                  ],
                ),
                const Divider(),
                Padding(
                  padding:EdgeInsets.all(MediaQuery.of(context).size.width/50),
                  child: SizedBox(
                    child: FutureBuilder(
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List _coupons = snapshot.data as List<Map<String,dynamic>>;

                            if (_coupons.isNotEmpty) {
                              ListingOfCoupons.reset();
                              return ListView.builder(
                                itemBuilder: (context, index) {
                                  CouponsObject coupon = CouponsObject(
                                      networkImage: '', name: '', coordinates: '',
                                      store: Store(
                                          storeId: 0, description: '',
                                          facebook: '', instagram: '',
                                          location: '', name: '', networkImage: '',
                                          twitter: '', contactNumber: '',
                                          website: ''));
                                  CouponsObject _coupon = coupon.fromJson(_coupons[index]);
                                  // todo: add to search list
                                  ListingOfCoupons.addToCouponsSearchList(_coupon);
                                  return InkWell(
                                    onTap: () {
                                      //go to coupon
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewCoupon(
                                          couponsObject: _coupon
                                      )));
                                    },
                                    child: Card(
                                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width/20))),
                                      shadowColor: shadowColor,
                                      color: primaryColorCards,
                                      elevation: 10,
                                      child: Padding(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
                                              child: SizedBox(height: height/5,child: Image.network(_coupon.networkImage, fit: BoxFit.fill,)),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.all(width/300),
                                                  child: Text('Name: ${_coupon.name}', style: const TextStyle(color: textColor),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(width/300),
                                                  child: Text('Store name: ${_coupon.store.name}', style: const TextStyle(color: textColor),),
                                                ),

                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: _coupons.length,
                              );
                            }else{
                              return const Center(child: Text('There are currently no coupons'),);
                            }//end if-else
                          }else {
                            return const Center(child: CircularProgressIndicator(),);
                          }//end if-else
                        },
                      future: ListingOfCoupons.getCoupons(),
                    ),
                    height: MediaQuery.of(context).size.height/1.5,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
