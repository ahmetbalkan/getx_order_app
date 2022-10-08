import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:http/http.dart' as http;
import '../../locator.dart';
import 'adress_base.dart';

class AddressService extends GetConnect implements AddressBase {
  final String url = "https://mojopilates.com/api/";

  @override
  Future<bool> addAddress(AddressModel address) async {
    final form = FormData(address.toMap());
    final response1 = await post(
      'https://mojopilates.com/api/insert_address.php',
      form,
    );
    return true;
  }

  @override
  bool deleteAddress(String id) {
    // TODO: implement deleteAddress
    throw UnimplementedError();
  }

  @override
  Future<List<AddressModel>> getAllAdress() async {
    List<AddressModel> _addressList = [];

    Future<Response> getAddress() => get(url + 'tum_address.php');
    var address = await getAddress();
    var jsonList = jsonDecode(address.body)['address'];
    if (jsonList is List) {
      _addressList = jsonList.map((e) => AddressModel.fromMap(e)).toList();
    }
    return _addressList;
  }

  @override
  bool updateAddress(String id) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
