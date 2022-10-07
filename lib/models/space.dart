class Space {
  int? id;
  String? name;
  String? imgaeUrl;
  int? price;
  String? city;
  String? country;
  int? rating;
  String? address;
  String? phone;
  String? mapUrl;
  List? photos;
  int? numberOfKitchens = 0;
  int? numberOfBedrooms = 0;
  int? numberOfCupboards = 0;

  Space({
    required this.id,
    required this.name,
    required this.imgaeUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    // required this.address,
    // required this.phone,
    // required this.mapUrl,
    // required this.photos,
    // required this.numberOfKitchens,
    // required this.numberOfBedrooms,
    // required this.numberOfCupboards,
  });

  // Space.fromJson(json) {
  //   id = json['id'];
  //   name = json['name'];
  //   imgaeUrl = json['imgaeUrl'];
  //   price = json['price'];
  //   city = json['city'];
  //   country = json['country'];
  //   rating = json['rating'];
  //   address = json['address'];
  //   phone = json['phone'];
  //   mapUrl = json['mapUrl'];
  //   photos = json['photos'];
  //   numberOfKitchens = json['numberOfKitchens'];
  //   numberOfBedrooms = json['numberOfBedrooms'];
  //   numberOfCupboards = json['numberOfCupboards'];
  // }
}
