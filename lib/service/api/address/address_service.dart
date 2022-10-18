import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:http/http.dart' as http;

import '../../../../controller/address_controller.dart';
import '../../../locator.dart';

import '../../local/address_isar_service.dart';
import 'adress_base.dart';

class AddressService extends GetConnect implements AddressBase {
  final String url = "https://mojopilates.com/api/";

  final FirebaseAuth auth = FirebaseAuth.instance;
  var _isarService = locator.get<IsarService>();

  @override
  addAddress(AddressModel address) async {
    try {
      final form = FormData(address.toMap());
      final response1 = await post(
        url + 'insert_address.php',
        form,
      );

      var jsonList = await jsonDecode(response1.body);
      int addedaddressid = jsonList['addressid'];

      if (addedaddressid != 0) {
        address.addressid = addedaddressid.toString();
        _isarService.addAddressLocal(address);
      }
    } catch (e) {
      debugPrint("AddressService addAddress Exception: " + e.toString());
    }
  }

  //{"addressid":13,"success":1,"message":"successfully "}

  @override
  Future<List<AddressModel>> getAllAdress() async {
    try {
      List<AddressModel> _addressList = [];
      final userid = FormData({
        'userid': auth.currentUser!.uid,
      });
      final address = await post(
        url + 'get_list_by_userid.php',
        userid,
      );
      var jsonList = await jsonDecode(address.body)['address'];
      if (jsonList is List) {
        _addressList = jsonList.map((e) => AddressModel.fromMap(e)).toList();
      }
      return _addressList;
    } catch (e) {
      debugPrint("AddressService getAllAdress Exception: " + e.toString());
      return [];
    }
  }
}
