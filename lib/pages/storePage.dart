import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewStore extends StatefulWidget {
  final String name;
  final  String networkImage;
  final  String storeDescription;
  final  String twitter;
  final  String facebook;
  final  String instagram;
  final String website;
  final String contactNumber;

  const ViewStore({Key? key, required this.website,required this.contactNumber,required this.networkImage, required this.name, required this.twitter,required this.instagram,required this.facebook, required this.storeDescription}) : super(key: key);

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

    String website = widget.website;
    String twitter = widget.twitter;
    String instagram = widget.instagram;
    String facebook = widget.facebook;

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
              Flexible(child: Padding(padding:const EdgeInsets.all(15.0), child: Image.network(widget.networkImage),)),
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              // the name of the store large font bold
              Flexible(child:  Text(widget.name, style: const TextStyle(fontSize: 15, color: textColor,fontWeight: FontWeight.bold),)),
              // the store description
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Flexible(child: Text(widget.storeDescription, style: const TextStyle(color: textColor),)),
              // a row of the socials they are available on
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Flexible(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //twitter
                  IconButton(
                      onPressed: () {
                        //use URL launcher to go to the relevant link
                        _launchInBrowser(Uri.parse(twitter));
                      },
                      icon: const FaIcon(FontAwesomeIcons.twitter)
                  ),
                  //facebook
                  IconButton(
                      onPressed: () {
                        // use URL launcher to go to the relevant link
                        _launchInBrowser(Uri.parse(facebook));

                      },
                      icon: const FaIcon(FontAwesomeIcons.facebook)
                  ),
                  //instagram
                  IconButton(
                      onPressed: () {
                        //use URL launcher to go to the relevant link
                        _launchInBrowser(Uri.parse(instagram));

                      },
                      icon: const FaIcon(FontAwesomeIcons.instagram)
                  ),
                ],
              )),
              // a row showing the option of the contact number as well as the website
              SizedBox(height: MediaQuery.of(context).size.height/80,),
              Flexible(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //call the business
                  IconButton(
                      onPressed: () {
                        //use URL launcher to go to the relevant link
                        makePhoneCall(widget.contactNumber);
                      },
                      icon: const FaIcon(FontAwesomeIcons.phone)
                  ),
                  //website
                  IconButton(
                      onPressed: () {
                        //use URL launcher to go to the relevant link
                        _launchInBrowser(Uri.parse(website));

                      },
                      icon: const FaIcon(FontAwesomeIcons.globe)
                  ),
                  //instagram
                ],
              )),

            ],
          ),
        ),
      ),
    );
  }
}
