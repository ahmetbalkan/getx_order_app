// To parse this JSON data, do
//
//     final addressModel = addressModelFromMap(jsonString);

import 'package:isar/isar.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

part 'address_model.g.dart';

@collection
class AddressModel {
  AddressModel({
    this.addressid,
    this.userid,
    this.namesurname,
    this.addresstitle,
    this.county,
    this.town,
    this.quarter,
    this.street,
    this.no,
    this.floor,
    this.doornumber,
    this.lat,
    this.longi,
    this.fulladdress,
    this.isDefault,
  });

  Id id = Isar.autoIncrement;
  late String? addressid;
  late String? userid;
  late String? namesurname;
  late String? addresstitle;
  late String? county;
  late String? town;
  late String? quarter;
  late String? street;
  late String? no;
  late String? floor;
  late String? doornumber;
  late String? lat;
  late String? longi;
  late String? fulladdress;
  late String? isDefault;

  factory AddressModel.fromJson(String str) =>
      AddressModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
        addressid: json["addressid"],
        userid: json["userid"],
        namesurname: json["namesurname"],
        addresstitle: json["addresstitle"],
        county: json["county"],
        town: json["town"],
        quarter: json["quarter"],
        street: json["street"],
        no: json["no"],
        floor: json["floor"],
        doornumber: json["doornumber"],
        lat: json["lat"],
        longi: json["longi"],
        fulladdress: json["fulladdress"],
        isDefault: json["isDefault"],
      );

  Map<String, dynamic> toMap() => {
        "addressid": addressid,
        "userid": userid,
        "namesurname": namesurname,
        "addresstitle": addresstitle,
        "county": county,
        "town": town,
        "quarter": quarter,
        "street": street,
        "no": no,
        "floor": floor,
        "doornumber": doornumber,
        "lat": lat,
        "longi": longi,
        "fulladdress": fulladdress,
        "isDefault": isDefault,
      };
}
