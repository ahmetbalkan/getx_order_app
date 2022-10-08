// To parse this JSON data, do
//
//     final addressModel = addressModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class AddressModel {
  AddressModel({
    required this.addressid,
    required this.namesurname,
    required this.addresstitle,
    required this.county,
    required this.town,
    required this.quarter,
    required this.street,
    required this.no,
    required this.floor,
    required this.doornumber,
    required this.lat,
    required this.longi,
    required this.fulladdress,
  });

  final String addressid;
  final String namesurname;
  final String addresstitle;
  final String county;
  final String town;
  final String quarter;
  final String street;
  final String no;
  final String floor;
  final String doornumber;
  final String lat;
  final String longi;
  final String fulladdress;

  factory AddressModel.fromJson(String str) =>
      AddressModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
        addressid: json['addressid'],
        namesurname: json['namesurname'],
        addresstitle: json['addresstitle'],
        county: json['county'],
        town: json['town'],
        quarter: json['quarter'],
        street: json['street'],
        no: json['no'],
        floor: json['floor'],
        doornumber: json['doornumber'],
        lat: json['lat'],
        longi: json['longi'],
        fulladdress: json['fulladdress'],
      );

  Map<String, dynamic> toMap() => {
        'addressid': addressid,
        'namesurname': namesurname,
        'addresstitle': addresstitle,
        'county': county,
        'town': town,
        'quarter': quarter,
        'street': street,
        'no': no,
        'floor': floor,
        'doornumber': doornumber,
        'lat': lat,
        'longi': longi,
        'fulladdress': fulladdress,
      };
}
