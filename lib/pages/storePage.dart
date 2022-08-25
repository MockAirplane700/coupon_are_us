import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/logic/favourite_stores.dart';
import 'package:coupon_are_us/widgets/custom_drawer.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewStore extends StatefulWidget {
 final Store store;

  const ViewStore({Key? key, required this.store}) : super(key: key);

  @override
  State<ViewStore> createState() => _ViewStoreState();
}

class _ViewStoreState extends State<ViewStore> {

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url,mode: LaunchMode.externalApplication)){
      throw 'Could not launch $url';
    }
  }

  Future<void> makePhoneCall(String phone) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phone);
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {

    String website = widget.store.website;
    String twitter = widget.store.twitter;
    String instagram = widget.store.instagram;
    String facebook = widget.store.facebook;
    String storeName = widget.store.name;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text('Store Front'),
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // store front image can be logo or store banner
              Flexible(child: Padding(padding:const EdgeInsets.all(15.0), child: Image.network(widget.store.networkImage),)),
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              // the name of the store large font bold
              Flexible(child:  Text(widget.store.name, style: const TextStyle(fontSize: 15, color: textColor,fontWeight: FontWeight.bold),)),
              // the store description
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Flexible(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.store.description, style: const TextStyle(color: textColor),),
              )),
              //Floating action button
              Padding(
                padding:EdgeInsets.all(MediaQuery.of(context).size.width/100),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                  FloatingActionButton(
                      onPressed: () {
                        // add to sql database
                        FavouriteStoresListing.insertStore(widget.store).whenComplete(() {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The store $storeName has been added to favourites')));
                        });
                      },
                    backgroundColor: Colors.deepOrangeAccent,
                    child: const Icon(Icons.save, color: Colors.yellow,),
                  ),
                ],),
              ),
              // a row of the socials they are available on
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Flexible(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //twitter
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          //use URL launcher to go to the relevant link
                          _launchInBrowser(Uri.parse(twitter));
                        },
                        icon: const FaIcon(FontAwesomeIcons.twitter)
                    ),
                  ),
                  //facebook
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          // use URL launcher to go to the relevant link
                          _launchInBrowser(Uri.parse(facebook));

                        },
                        icon: const FaIcon(FontAwesomeIcons.facebook)
                    ),
                  ),
                  //instagram
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          //use URL launcher to go to the relevant link
                          _launchInBrowser(Uri.parse(instagram));

                        },
                        icon: const FaIcon(FontAwesomeIcons.instagram)
                    ),
                  ),

                  //call the business
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          //use URL launcher to go to the relevant link
                          makePhoneCall(widget.store.contactNumber);
                        },
                        icon: const FaIcon(FontAwesomeIcons.phone)
                    ),
                  ),
                  //website
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          //use URL launcher to go to the relevant link
                          _launchInBrowser(Uri.parse(website));

                        },
                        icon: const FaIcon(FontAwesomeIcons.globe)
                    ),
                  ),
                  //instagram
                ],
              )),
              // a row showing the option of the contact number as well as the website
              SizedBox(height: MediaQuery.of(context).size.height/80,),

            ],
          ),
        ),
      ),
    );
  }
}
