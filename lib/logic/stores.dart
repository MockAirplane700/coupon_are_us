import 'package:coupon_are_us/customObjects/store.dart';
import 'package:coupon_are_us/persistence/mongo_database.dart';

class StoreListing {
  static List<Store> stores = [
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Northern reflections
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Gap
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Dynamite
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Garage
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Urban planet
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Ardene
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Lavish
    Store(
        description: 'lorem ipsum',
        facebook: 'https://www.facebook.com/OutOfTheBlueWpg',
        instagram: 'https://twitter.com/OutOfTheBlueWpg',
        location: 'https://www.instagram.com/outoftheblu/',
        name: 'Out of the Blue',
        networkImage: 'https://cdn.shopify.com/s/files/1/2495/8384/files/3CC28EBD-4D93-4471-895F-3ED909D7A1D1_2000x.jpg?v=1647221748',
        twitter:'https://twitter.com/OutOfTheBlueWpg',
        website: 'https://outoftheblue.ca/',
        contactNumber: '+1-204-477–6489', storeId: 0
    ),
    //Below the belt
    Store(
        description: '  Below the Belt started with one store in 1978. Located in Edmonton, Alberta, with the focus of providing the best denim selection in town.Since then, we have grown so much! Below the Belt stores are now across Canada and our stores feature a diverse collection of apparel & accessories for below and above the belt for men, women and kids. We’re proud to support popular, local, and eco-friendly brands.Check out our curated collections of the hottest trends and newest arrivals, and discover bestselling brands like The North Face, SECTION 35, Columbia, Levi’s, Champion, tentree, and more.',
        facebook: 'https://www.facebook.com/BelowTheBeltStores/',
        instagram: 'https://www.instagram.com/belowthebeltstores/',
        location: ' 1485 Portage Ave, Winnipeg, MB R3G 0W4',
        name: 'Below the belt',
        networkImage: 'https://s3-media0.fl.yelpcdn.com/bphoto/piIEGOmrs7jB9k3bIVli1A/o.jpg',
        twitter:'https://twitter.com/',
        website: 'https://www.belowthebelt.com',
        contactNumber: '+1-204-772-9342', storeId: 0
    )
  ];

  static List<Store> fetchStore() {
    return stores;
  }//end fetch store

  static Future getStores() async {
    return MongoDatabase.getStores();
  }//end get stores

  static List<Store> getStoresIterationTwo() {
    return stores;
  }
}//end store listing