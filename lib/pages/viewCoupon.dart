import 'dart:io';

import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:coupon_are_us/customObjects/couponObject.dart';
import 'package:coupon_are_us/widgets/searchDelegate.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class ViewCoupon extends StatefulWidget {
 final CouponsObject couponsObject;

  const ViewCoupon({Key? key, required this.couponsObject}) : super(key: key);

  @override
  State<ViewCoupon> createState() => _ViewCouponState();
}

class _ViewCouponState extends State<ViewCoupon> {

  late double width;
  late double height;
  String barcodeValue = 'https://www.sizibamthandazo.dev';

  // void buildBarcode(Barcode barcode, String data, {String? filename, double? width, double? height, double? fontHeight}) {
  //   //create the barcode
  //   final svg = barcode.toSvg(data, width: width ?? 200, height: height ?? 80, fontHeight: fontHeight);
  //   //save the image
  //   filename ??= barcode.name.replaceAll(RegExp(r'\s'), '-').toLowerCase();
  //   File('$filename.svg').writeAsStringSync(svg);
  // }//end build barcode
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    barcodeValue = widget.couponsObject.storeId.website;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupon View', style: TextStyle(color: textColor),),
        backgroundColor: primaryAppBarColor,
        iconTheme: const IconThemeData(color: primaryIconThemeDataColor),
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
          child: Padding(
            padding:const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              
              children: [
                Image.network(widget.couponsObject.networkImage),
                Card(
                  color: primaryColorCards,
                  shadowColor: shadowColor,
                  elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(height/80)),
                  child: Padding(
                    padding:  EdgeInsets.all(height/90),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(padding: EdgeInsets.zero, child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:EdgeInsets.all(width/300),
                                child: Text(widget.couponsObject.storeId.name,  style: const TextStyle(fontSize: 20),),
                              ),
                            ),
                          ],
                        ),),
                        Padding(padding: EdgeInsets.zero, child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:  EdgeInsets.all(width/200),
                                child: Text(widget.couponsObject.storeId.location , style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),),
                              ),
                            ),
                          ],
                        ),),
                        Flexible(
                          flex: 1,
                          fit:  FlexFit.loose,
                          child: SizedBox(
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(widget.couponsObject.name , style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/100), child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/30)),
                          elevation: 2,
                          color: primaryColorCards,
                          child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width/30),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height/8,
                              child: SfBarcodeGenerator(
                                value: barcodeValue.isNotEmpty ? barcodeValue :'https://www.sizibamthandazo.dev' ,
                                showValue: false,
                                symbology: Code39Extended(module: 2),
                              ),
                            ),),
                        ),),
                      ],
                    ),
                  ),
                )
              ],
            ),),
        ),
      ),
    );
  }
}
