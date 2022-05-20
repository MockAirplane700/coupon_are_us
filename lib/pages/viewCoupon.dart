import 'package:coupon_are_us/customObjects/constants.dart';
import 'package:flutter/material.dart';

class ViewCoupon extends StatefulWidget {
 final String networkImage;

  const ViewCoupon({Key? key, required this.networkImage}) : super(key: key);

  @override
  State<ViewCoupon> createState() => _ViewCouponState();
}

class _ViewCouponState extends State<ViewCoupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupon View'),
        backgroundColor: primaryAppBarColor,
      ),
      backgroundColor: backgroundApplicationColor,
      body: Center(
        child: Padding(padding:const EdgeInsets.all(10.0), child: Image.network(widget.networkImage),),
      ),
    );
  }
}
