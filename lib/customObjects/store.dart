// holds the object structure for the stores

class Store {
  final String name;
  final String location;
  final String networkImage;
  final String description;
  final String facebook;
  final String twitter;
  final String instagram;
  final String website;
  final String contactNumber;

  Store({required this.description, required this.facebook,
    required this.instagram, required this.location, required this.name,
    required this.networkImage, required this.twitter, required this.contactNumber, required this.website });
}