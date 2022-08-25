// holds the object structure for the stores

class Store {
  final int storeId;
  final String name;
  final String location;
  final String networkImage;
  final String description;
  final String facebook;
  final String twitter;
  final String instagram;
  final String website;
  final String contactNumber;

  Store({required this.storeId,required this.description, required this.facebook,
    required this.instagram, required this.location, required this.name,
    required this.networkImage, required this.twitter, required this.contactNumber, required this.website });

  Store fromJson(json) {
    return Store(
        storeId: json['storeId'], description: json['description'],
        facebook: json['facebook'], instagram: json['instagram'],
        location: json['location'], name:json['name'] , networkImage: json['networkImage'],
        twitter: json['twitter'], contactNumber: json['contactNumber'],
        website: json['website']
    );
  }//end from json

  Map<String,dynamic> toJson() {
    return {
      'storeId': storeId,
      'name':name,
      'location': location,
      'networkImage': networkImage,
      'description':description,
      'facebook':facebook,
      'twitter':twitter,
      'instagram': instagram,
      'website': website,
      'contactNumber':contactNumber
    };
  }//end to json


}//end store