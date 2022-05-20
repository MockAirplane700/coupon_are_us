
import 'package:coupon_are_us/customObjects/store.dart';
import 'package:tuple/tuple.dart';

class CouponsObject {
  final String name;
  final String networkImage;
  final Store store;
  final Tuple2<double,double> coordinates;

  CouponsObject({required this.networkImage, required this.name, required this.coordinates, required this.store});
}