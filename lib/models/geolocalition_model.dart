class GeolocalitionModel{
final String lat;
final String long;

GeolocalitionModel({
  required this.lat,
  required this.long
});

GeolocalitionModel.dart({ required this.lat, required this.long});

factory GeolocalitionModel.fromJson(Map<String, dynamic> json) {
  return GeolocalitionModel(
    lat: json['firstname'],
    long: json['lastname']);
}

Map<String, dynamic> toJson(){
  return {'lat': lat, 'long': long};
}
}