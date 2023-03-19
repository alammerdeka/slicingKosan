part of 'models.dart';
class Space{
  int? id;
  String? name;
  String? imageUrl;
  double? price;
  String? city;
  String? country;
  int? rating;
  String? address;
  String? phone;
  String? mapUrl;
  List? photos;
  int? numberOfKitchens;
  int? numberOfBedrooms;
  int? numberOfCupboards;

  Space({this.id,this.name,this.imageUrl,this.price,this.city, this.country,this.rating,  this.address,
    this.mapUrl,
    this.numberOfBedrooms,
    this.numberOfCupboards,
    this.numberOfKitchens,
    this.phone,
    this.photos,
  });
}