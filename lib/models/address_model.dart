import './../models/geolocalition_model.dart';

class AddressModel{
final String city;
final String street;
final int number;
final String zipcode;
final GeolocalitionModel geolocation;

AddressModel({
  required this.city,
  required this.street,
  required this. number,
  required this. zipcode,
  required this.geolocation,
});

factory AddressModel.fromJson(Map<String, dynamic> json) {
  return AddressModel(
    city: json['city'],
    street: json['street'],
    number: json['number'],
    zipcode: json['zipcode'],
    geolocation: GeolocalitionModel.fromJson(json['geolocation']),);
}

Map<String, dynamic> toJson(){
  return {
    'city': city,
    'street': street,
    'number': number,
    'zipcode': zipcode,
    'geolocation':geolocation.toJson(),
  };
}
}