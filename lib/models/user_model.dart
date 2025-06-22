import './../models/address_model.dart';
import './../models/name_model.dart';

class UserModel {
final int id;
final String email;
final String username;
final String password;
final NameModel name;
final AddressModel address;
final String phone;

UserModel({
  required this.id,
  required this.email,
  required this.username,
  required this.password,
  required this.name,
  required this.address,
  required this.phone,
});

factory UserModel.fromJson(Map<String, dynamic> json) {
  return UserModel(
    id: json['id'],
    email: json['email'],
    username: json['username'],
    password: json['password'],
    name: NameModel.fromJson(json['name']),
    address: AddressModel.fromJson(json['address']),
    phone: json['phone'],
  );
}  


Map<String, dynamic> toJson(){
  return {
    'id': id,
    'email': email,
    'username': username,
    'password': password,
    'name': name.toJson(),
    'addrees': address.toJson(),
    'phone': phone,
  };
}


}