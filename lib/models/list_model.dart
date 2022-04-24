import 'package:flutter/cupertino.dart';

class Persona {
  late String name;
  late String phone;
  late String address;
  late Image photo;

  Persona(String name, String phone, String address, Image photo) {
    this.name = name;
    this.phone = phone;
    this.address = address;
    this.photo = photo;
  }
}
