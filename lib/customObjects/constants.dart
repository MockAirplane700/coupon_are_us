import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// the primary color for the app bar

const Color primaryAppBarColor = Colors.deepOrangeAccent;

// the primary color for any cards

const Color primaryColorCards = Colors.deepOrangeAccent;

// the background color of the application

const Color backgroundApplicationColor = Colors.deepOrange;

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
const String logoUrl = 'https://firebasestorage.googleapis.com/v0/b/coupons-are-us.appspot.com/o/couponsareus%20logo%202.png?alt=media&token=3a04512f-5f8d-4786-a1c7-c156a0dd2448';

// the color of the drawer header
const Color drawerHeaderColor = Colors.white30;

// the color of icons
const Color iconColor = Colors.orangeAccent;

// the color of shadows
const Color shadowColor = Colors.black;

// dialog box background color
const Color dialogBoxBackgroundColor = Colors.orange;

// Circle avatar background color
const Color circleAvatarBackgroundColor = Colors.deepOrangeAccent;


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