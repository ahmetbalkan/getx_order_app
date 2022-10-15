import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:http/http.dart' as http;

import '../../../controller/address_controller.dart';
import '../../locator.dart';
import '../isar_service.dart';
import 'adress_base.dart';

class AddressService extends GetConnect implements AddressBase {
  final String url = "https://mojopilates.com/api/";

  final FirebaseAuth auth = FirebaseAuth.instance;
  var _isarService = locator.get<IsarService>();

  @override
  Future<bool> addAddress(AddressModel address) async {
    getAllAdress();
    final form = FormData(address.toMap());
    final response1 = await post(
      url + 'insert_address.php',
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

    _addressList = await _isarService.getAllAddressLocal();

    if (_addressList.isEmpty) {
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
        for (var i = 0; i < _addressList.length; i++) {
          _isarService.addAddressLocal(_addressList[i]);
        }
      }

      return _addressList;
    } else {
      return _addressList;
    }
  }

  @override
  bool updateAddress(String id) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }

  @override
  Future<void> isDefaultUpdate(int yeniid) async {
    var alladdress = await getAllAdress();

    var a = alladdress
        .where((element) => element.isDefault!.contains("1"))
        .toList();

    var b = alladdress
        .where((element) => element.addressid!.contains(yeniid.toString()))
        .toList();

    await _isarService.UpdateisDefault(a.first, b.first);

    /* final formold = FormData({
      'addressid': a.first.addressid,
      'isDefault': "0",
    });

    final formnew = FormData({
      'addressid': b.first.addressid,
      'isDefault': "1",
    });

    final responseold = await post(
      url + 'update_single_row_address.php',
      formold,
    );

    final responsenew = await post(
      url + 'update_single_row_address.php',
      formnew,
    );*/
  }

  @override
  Future<AddressModel> getDefaultAddress() async {
    return await _isarService.getDefaultAddress();
  }
}
