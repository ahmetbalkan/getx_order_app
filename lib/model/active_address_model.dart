import 'package:isar/isar.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

part 'active_address_model.g.dart';

@collection
class ActiveAddressModel {
  ActiveAddressModel({
    this.activeid,
    this.addressid,
    this.userid,
  });

  Id id = Isar.autoIncrement;
  String? activeid;
  String? addressid;
  String? userid;

  factory ActiveAddressModel.fromJson(String str) =>
      ActiveAddressModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActiveAddressModel.fromMap(Map<String, dynamic> json) =>
      ActiveAddressModel(
        activeid: json["activeid"],
        addressid: json["addressid"],
        userid: json["userid"],
      );

  Map<String, dynamic> toMap() => {
        "activeid": activeid,
        "addressid": addressid,
        "userid": userid,
      };
}
