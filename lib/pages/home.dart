import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/firebase_options.dart';
import 'package:coupon_are_us/logic/coupons.dart';
import 'package:coupon_are_us/pages/storePage.dart';
import 'package:coupon_are_us/pages/viewCoupon.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //obtain and initialize the list coupons
  @override
  Widget build(BuildContext context) {
    List<CouponsObject> coupons = [
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
      CouponsObject(
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          name: 'Arden 50% off',
          coordinates: '',
          store: Store(
              description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
              facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
              instagram: 'http://instagram.com/ardene/',
              location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
              name: 'Arden',
              networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
              twitter: 'https://twitter.com/Synthex2020',
              contactNumber: '4313883047',
              website: 'https://www.ardene.com/'
          )
      ),
    ];
    List<Store> stores = [
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      ),
      Store(
          description: 'Ardene is one of North American\'s premier fashion retailers with over 400 stores in Canada and in the US. From its start as a fashion accessory and jewelry store, Ardene has grown to become a truly unique one-stop shopping destination! With a product assortment which includes shoes, accessories, jewelry, clothing, intimates and beauty products, we offer girls the exciting opportunity to dress themselves from head to toe in one store',
          facebook: 'http://www.facebook.com/pages/Ardene/72154595089',
          instagram: 'http://instagram.com/ardene/',
          location: 'St Mary\'s Rd #106, Winnipeg, MB R2M 5E5',
          name: 'Arden',
          networkImage: 'https://ssmscdn.yp.ca/image/resize/84224403-b0a7-4998-9b95-22b32337f317/ypui-d-mp-pic-gal-lg/ardene-storefront-1.jpg',
          twitter: 'https://twitter.com/Synthex2020',
          contactNumber: '4313883047',
          website: 'https://www.ardene.com/'
      )
    ];


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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  Text('Stores', style: TextStyle(color: textColor),),
                ],
              ),
              const Divider(),
              //First list view that shows the stores
              Row(
                children: [
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            //go to the store page
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> ViewStore(
                                  website: stores[index].website, contactNumber:stores[index].contactNumber,
                                  networkImage: stores[index].networkImage, name: stores[index].name, twitter: stores[index].twitter,
                                  instagram: stores[index].instagram, facebook: stores[index].facebook,
                                  storeDescription: stores[index].description))
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
                children: const [
                  Text('Coupons', style: TextStyle(color: textColor),),
                ],
              ),
              const Divider(),
              SizedBox(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        //go to coupon
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewCoupon(
                            networkImage: coupons[index].networkImage
                        )));
                      },
                      child: Card(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                        child: Column(
                          children: [
                            Image.network(coupons[index].networkImage),
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
                    );
                  },
                  itemCount: coupons.length,
                ),
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          )
          // child: FutureBuilder(
          //   future: Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
          //   builder: (BuildContext context, AsyncSnapshot snapshot) {
          //     if (snapshot.hasError) {
          //       return Center(child: Text('Error: ${snapshot.error}'),);
          //     }else if (snapshot.hasData) {
          //      return StreamBuilder<QuerySnapshot>(
          //         builder: (BuildContext context, AsyncSnapshot snapshot) {
          //           if (snapshot.connectionState == ConnectionState.waiting){
          //             return const Center(child: CircularProgressIndicator(),);
          //           }else if (snapshot.connectionState == ConnectionState.done) {
          //             if (snapshot.hasData) {
          //               QuerySnapshot querySnapshot = snapshot.data;
          //               for (var element in querySnapshot.docs) {
          //                 coupons.add(
          //                     CouponsObject(
          //                         networkImage: element['image'], name: element['name'], coordinates: element['coordinates'].toString(),
          //                         //0: name, 1: description 2: location 3: image 4: contactNumber 5: website 6: facebook 7: twitter
          //                         store: Store(
          //                             description: (element['Store'])[1], facebook:  (element['Store'])[6],
          //                             instagram:  (element['Store'])[8], location:  (element['Store'])[2],
          //                             name:  (element['Store'])[0], networkImage:  (element['Store'])[3],
          //                             twitter:  (element['Store'])[7], contactNumber:  (element['Store'])[4],
          //                             website:  (element['Store'])[5]
          //                         )
          //                     )
          //                 );
          //               }
          //               ListingOfCoupons.setData(coupons);
          //               return ListView.builder(
          //                 itemCount: coupons.length,
          //                 itemBuilder: (context, index){
          //                   // NULL CHECK
          //                   if (coupons.isEmpty){
          //                     // the list is empty they are no coupons present
          //                     return Center(
          //                       child: Column(
          //                         children: const [
          //                           CircularProgressIndicator(),
          //                           Text('They are currently no coupons listed please wait a moment', style: TextStyle(
          //                               fontSize: 25,
          //                               color: textColor
          //                           ),)
          //                         ],
          //                       ),
          //                     );
          //                   }else{
          //                     //list is not empty they are coupons present
          //                     return Center(
          //                       child: Card(
          //                         color: primaryColorCards,
          //                         child: Padding(padding: const EdgeInsets.all(5.0), child: Column(
          //                           children: [
          //                             Image.network(coupons[index].networkImage),
          //                             SizedBox(height: MediaQuery.of(context).size.height/100,),
          //                             Row(
          //                               mainAxisSize: MainAxisSize.min,
          //                               crossAxisAlignment: CrossAxisAlignment.center,
          //                               mainAxisAlignment: MainAxisAlignment.center,
          //                               children: [
          //                                 Flexible(child: ElevatedButton(
          //                                     child: Column(
          //                                       children:const [
          //                                         Icon(Icons.library_books),
          //                                         Text('View coupon', style: TextStyle(color: textColor))
          //                                       ],
          //                                     ),
          //                                     onPressed: () {
          //                                       //go to a page to only view the one coupon to be scanned and send data to screen
          //                                       Navigator.push(context,
          //                                           MaterialPageRoute(builder: (context)=> ViewCoupon(networkImage: coupons[index].networkImage,))
          //                                       );
          //                                     },
          //                                     style: ElevatedButton.styleFrom(
          //                                       primary: buttonColor,
          //                                     )
          //                                 )),
          //                                 Flexible(child: ElevatedButton(
          //                                     child: Column(
          //                                       children:const [
          //                                         Icon(Icons.store),
          //                                         Text('View Store', style: TextStyle(color: textColor),)
          //                                       ],
          //                                     ),
          //                                     onPressed: () {
          //                                       //go to a page to view the store the coupon belongs to, send data to screen
          //                                       Navigator.push(context,
          //                                           MaterialPageRoute(builder: (context)=> ViewStore(
          //                                             website: coupons[index].store.website,
          //                                             name: coupons[index].store.name,
          //                                             storeDescription: coupons[index].store.description,
          //                                             instagram: coupons[index].store.instagram,
          //                                             twitter:coupons[index].store.twitter,
          //                                             facebook: coupons[index].store.facebook,
          //                                             contactNumber: coupons[index].store.contactNumber,
          //                                             networkImage: coupons[index].store.networkImage,
          //                                           ))
          //                                       );
          //                                     },
          //                                     style: ElevatedButton.styleFrom(
          //                                       primary: buttonColor,
          //                                     )
          //                                 )),
          //                               ],
          //                             )
          //
          //                           ],
          //                         ),),
          //                       ),
          //                     );
          //                   }
          //                 },
          //               );
          //             }else{
          //               return const Center(child: CircularProgressIndicator(),);
          //             }
          //           }else{
          //             return Text(snapshot.error.toString());
          //           }//end if-else
          //         },
          //         stream: FirebaseFirestore.instance.collection('coupons').get().asStream(),
          //       );
          //     }else{
          //       return Center(child: Text('Error : ${snapshot.error}'),);
          //     }
          //   },
          // ),

        ),
      ),
    );
  }
}
