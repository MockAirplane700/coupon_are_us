import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:flutter/material.dart';

class ViewStore extends StatefulWidget {
  final  name;
  final  networkImage;
  final  storeDescription;
  final  twitter;
  final  facebook;
  final  instagram;
  final website;
  final contactNumber;

  const ViewStore({Key? key, this.website,this.contactNumber,this.networkImage, this.name, this.twitter,this.instagram,this.facebook, this.storeDescription}) : super(key: key);

  @override
  State<ViewStore> createState() => _ViewStoreState();
}

class _ViewStoreState extends State<ViewStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppBarColor,
        title: const Text('Store Front'),
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
                  IconButton(
                      onPressed: () {
                        //TODO: use URL launcher to go to the relevant link
                      },
                      icon: const Icon(Icons.facebook)
                  )
                ],
              ))
              // a row showing the option of the contact number as well as the website

            ],
          ),
        ),
      ),
    );
  }
}
