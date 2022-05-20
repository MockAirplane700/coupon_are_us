
import 'package:coupon_are_us/customObjects/store.dart';

class Users {
  final String name;
  final String networkImage;
  final String email;
  final List<Store> favouriteStores;

  Users({required this.name, required this.networkImage, required this.email, required this.favouriteStores});
}