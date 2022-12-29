import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/pages/favourite_stores.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

///-----------------------------------------
///
///   todo: Add access to favourite stores
///
/// -------------------------------------------
///
///

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

///--------------------------------------
///       Circle avatar logo
///       Favourite stores
///       Share the application with your friends
///       Follow us on instagram
///       Rate our application
///       Report a bug
///       Contact us
///       Sign out
/// -------------------------------------


class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: drawerHeaderColor,
            ),

              child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/100),child: CircleAvatar(
                radius: MediaQuery.of(context).size.width/4,
                backgroundColor: drawerHeaderColor,
                child: Padding(padding: EdgeInsets.all( MediaQuery.of(context).size.width/50), child: Image.network(logoUrl)),),
                // backgroundImage: NetworkImage(logoUrl, scale: MediaQuery.of(context).size.width),
              ),),
          // Favourite stores
          ListTile(
            leading: const Icon(Icons.bookmark_outlined, color: iconColor,),
            title: const Text('Favourite stores', style: TextStyle(color: textColor),),
            onTap: () {
              //go to favourites page
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavouriteStores()));
            },
          ),
          // Share the application
          ListTile(
            leading: const Icon(Icons.share, color: iconColor,),
            title: const Text('Share CouponsAreUs!', style: TextStyle(color: textColor),),
            onTap: () {
              //share the application
              Share.share(shareUrl);
            },
          ),
          // Follow us on our socials
          ListTile(
            leading: const Icon(Icons.contacts_rounded, color: iconColor,),
            title: const Text('Follow us on our socials!', style: TextStyle(color: textColor),),
            onTap: () {
              //open dialog to icon buttons to socials
              showDialog(context: context, builder: (context)=> AlertDialog(
                title: const Text('Where we are currently are!.'),
                backgroundColor: dialogBoxBackgroundColor,
                content: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/80), child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: IconButton(onPressed: () {
                      launchWebSiteUrl('https://www.instagram.com/mockAirplane700');
                    }, icon:const  FaIcon(FontAwesomeIcons.instagram))) ,
                    Expanded(child: IconButton(onPressed: () {
                      launchWebSiteUrl('https://www.youtube.com');
                    }, icon: const FaIcon(FontAwesomeIcons.youtube),))
                  ],
                ),),
              ));
            },
          ),
          // Rate our application
          ListTile(
            leading: const Icon(Icons.rate_review_outlined, color: iconColor,),
            title: const Text('Rate CouponsAreUs', style: TextStyle(color: textColor),),
            onTap: () {
              //go to ratings page on store
              showDialog(context: context, builder: (context)=> AlertDialog(
                title: const Text('Please select the platform you are currenlty on.'),
                backgroundColor: dialogBoxBackgroundColor,
                content: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/80), child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: IconButton(onPressed: () {
                      // link to store page
                      launchWebSiteUrl('https://www.apple.com');
                    }, icon:const  FaIcon(FontAwesomeIcons.appStoreIos))) ,
                    Expanded(child: IconButton(onPressed: () {
                      launchWebSiteUrl('https://www.googleplaystore.com');
                    }, icon: const FaIcon(FontAwesomeIcons.googlePlay),))
                  ],
                ),),
              ));
            },
          ),
          // report a bug
          ListTile(
            leading: const Icon(Icons.bug_report_rounded, color: iconColor,),
            title: const Text('Report a bug', style: TextStyle(color: textColor),),
            onTap: () {
              //send email report
              launchEmailIntent('sizibamthandazo@yahoo.com', 'COUPONS ARE US BUG REPORT');
            },
          ),
          // contact us
          ListTile(
            leading: const Icon(Icons.email, color: iconColor,),
            title: const Text('Contact us', style: TextStyle(color: textColor),),
            onTap: () {
              //Email intent
              launchEmailIntent('sizibamthandzo@yahoo.com', 'COUPONS ARE US CUSTOMER REACHING OUT');
            },
          ),
          // Sign out
          // ListTile(
          //   leading: const Icon(Icons.login_outlined, color: iconColor,),
          //   title: const Text('Sign out', style: TextStyle(color: textColor),),
          //   trailing: const Icon(Icons.waving_hand_rounded, color: iconColor,),
          //   onTap: () {
          //     //logout
          //
          //   },
          // )
        ],
    ),

    );
  }
}
