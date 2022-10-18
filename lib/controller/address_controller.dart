import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/model/active_address_model.dart';
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
  var activeAddressList = ActiveAddressModel().obs;
  var activeAddress = AddressModel().obs;

  var isDataLoading = false.obs;

  @override
  void onInit() async {
    getAddressList();
    getActiveAddressList();
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
      addressList.add(addressModel);
      update();
    } catch (e) {
      debugPrint("AddressController addAddress Exception: " + e.toString());
    }
  }

  updateActiveAddress(ActiveAddressModel activeAddressModel) async {
    try {
      isDataLoading(true);
      await _addressService.addUpdateDefaultAddress(activeAddressModel);
      activeAddressList.value = activeAddressModel;

      var b = addressList
          .where((element) =>
              element.addressid!.contains(activeAddressModel.addressid!))
          .toList();
      activeAddress.value = b.first;

      update();
    } catch (e) {
      debugPrint(
          "AddressController updateActiveAddress Exception: " + e.toString());
    } finally {
      isDataLoading(false);
    }
  }

  getActiveAddressList() async {
    try {
      isDataLoading(true);
      var activeaddress = await _isarService.getActiveAddressLocalID();
      if (activeaddress == null) {
        activeAddressList.value = await _addressService.getActiveAddressID();

        var b = addressList
            .where((element) =>
                element.addressid!.contains(activeAddressList.value.addressid!))
            .toList();
        activeAddress.value = b.first;
        update();
      } else {
        activeAddressList.value = activeaddress;
        var b = addressList
            .where((element) =>
                element.addressid!.contains(activeAddressList.value.addressid!))
            .toList();
        activeAddress.value = b.first;
        update();
      }
    } catch (e) {
      debugPrint(
          "AddressController getActiveAddressList Exception: " + e.toString());
    } finally {
      isDataLoading(false);
    }
  }
}
