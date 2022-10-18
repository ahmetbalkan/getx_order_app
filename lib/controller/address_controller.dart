import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:flutter/material.dart';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../locator.dart';

import '../service/api/address/address_service.dart';
import '../service/api/address/adress_base.dart';
import '../service/local/address_isar_service.dart';

AddressBase _addressService = locator.get<AddressService>();
var _isarService = locator.get<IsarService>();

final FirebaseAuth auth = FirebaseAuth.instance;

class AddressController extends GetxController {
  var addressList = <AddressModel>[].obs;
  var isDataLoading = false.obs;
  var homePageAddressModel = AddressModel().obs;

  @override
  void onInit() {
    getAddressList();
    super.onInit();
  }

  getAddressList() async {
    try {
      isDataLoading(true);
      var listlocal = await _isarService.getAllAddressLocal();
      if (listlocal.length < 1) {
        addressList.value = await _addressService.getAllAdress();
        update();
      } else {
        addressList.value = listlocal;
        update();
      }
    } catch (e) {
      debugPrint("AddressController getAddressList Exception: " + e.toString());
    } finally {
      isDataLoading(false);
    }
  }

  addAddress(AddressModel addressModel) async {
    try {
      _addressService.addAddress(addressModel);
      _isarService.addAddressLocal(addressModel);
      update();
    } catch (e) {
      debugPrint("AddressController addAddress Exception: " + e.toString());
    }
  }
}
