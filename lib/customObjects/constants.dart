import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// the primary color for the app bar

 const Color primaryAppBarColor = Colors.white;

// the primary color for any cards

const Color primaryColorCards = Colors.white;

// the background color of the application

const Color backgroundApplicationColor = Colors.grey;

// the color of text in the app

const Color textColor = Colors.black;

// the color of the buttons of the application

const Color buttonColor = Colors.deepOrange;

// Mongo db api
const String mongoApi = 'mongodb+srv://TestUser:Test%40123@cluster0.vwx6rwi.mongodb.net/couponsAreUs';

// share link to couponsareus
const String shareUrl = 'https://www.sizibamthandazo.dev/projects/couponsareus';

// icon theme data color
const Color primaryIconThemeDataColor = Colors.black;
// asset path to logo
const String assetPath = 'C:\\Users\\sizib\\StudioProjects\\coupon_are_us\\images\\logo.png';

// the logo
const String logoUrl = 'https://firebasestorage.googleapis.com/v0/b/coupons-are-us.appspot.com/o/3.jpg?alt=media&token=81d384c4-3b77-499b-99a1-5c35638ea4b4';

// the color of the drawer header
const Color drawerHeaderColor = Colors.white;

// the color of icons
const Color iconColor = Colors.black;

// the color of shadows
const Color shadowColor = Colors.black;

// dialog box background color
const Color dialogBoxBackgroundColor = Colors.white;

// Circle avatar background color
const Color circleAvatarBackgroundColor = Color(0xffaaffa500);

///*****************************************************************************
///
/// SEARCH DATA
///
/// ****************************************************************************
///

List<Store> storesSearchData = [];

void addSearchData(List<Store> data) {
  for (var value in data) {
    storesSearchData.add(value);
  }//end for loop
}//end method

List<CouponsObject> couponsSearchData = [];

void addCouponsSearchData(List<CouponsObject> data) {
  for (var value in data) {
    couponsSearchData.add(value);
  }//end for loop
}//end method

///*****************************************************************************
///
/// URL LAUNCHER
///
/// ****************************************************************************
///

Future<void> launchWebSiteUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))){
    throw 'Could not launch url $url';
  }
}//end method

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

void launchEmailIntent(String mailto , String subject) {
  final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: mailto,
      query: encodeQueryParameters(<String, String>{
        'subject' : subject
      })

  );

  launchUrl(emailLaunchUri);
}//end method