import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:firebase_getx_order_app/service/address/address_service.dart';
import 'package:firebase_getx_order_app/service/address/adress_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../locator.dart';

AddressBase _addressService = locator.get<AddressService>();

class AddressController extends GetxController {
  var addressList = <AddressModel>[].obs;
  var currentLatlng = LatLng(41.0255771, 28.9728992).obs;
  var isDataLoading = false.obs;
  var isLocationLoading = false.obs;
  var getFullAddress = "".obs;
  var formAdressModel = Rxn<AddressModel>();

  var permission = LocationPermission.denied.obs;
  late bool serviceEnabled;

  void getAddressList() async {
    try {
      isDataLoading(true);
      addressList.value = await _addressService.getAllAdress();
    } catch (e) {
      print(e);
    } finally {
      isDataLoading(false);
    }
  }

  void addAddress(AddressModel addressModel) async {
    try {
      _addressService.addAddress(addressModel);
    } catch (e) {
      print(e);
    }
  }

  void getLocation() async {
    try {
      isLocationLoading(true);
      Position position = await Geolocator.getCurrentPosition();
      currentLatlng.value = LatLng(position.latitude, position.latitude);
    } catch (e) {
      print(e);
    } finally {
      isLocationLoading(false);
    }
  }

  void locationToAddress(LatLng latLng) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latLng.latitude, latLng.longitude);

      if (placemarks.isNotEmpty) {
        if (placemarks.first.country == "Türkiye") {
          String fullAddress = placemarks.first.subLocality.toString() +
              " Mahallesi" +
              " " +
              placemarks.first.thoroughfare.toString() +
              " no:" +
              placemarks.first.subThoroughfare.toString() +
              " " +
              placemarks.first.subAdministrativeArea.toString() +
              "/" +
              placemarks.first.administrativeArea.toString() +
              "/" +
              placemarks.first.country.toString();

          getFullAddress.value = fullAddress;

          formAdressModel.value = AddressModel(
              addressid: "1",
              namesurname: "",
              addresstitle: "",
              county: placemarks.first.country.toString(),
              town: placemarks.first.administrativeArea.toString(),
              quarter: placemarks.first.subLocality.toString(),
              street: placemarks.first.thoroughfare.toString(),
              no: placemarks.first.subThoroughfare.toString(),
              floor: "",
              doornumber: "",
              lat: latLng.latitude.toString(),
              longi: latLng.longitude.toString(),
              fulladdress: fullAddress);
        } else {
          getFullAddress.value = "BU ülkede hizmet verilmemektedir.";
        }
      } else {
        getFullAddress.value = "Adres bulunamadı.";
      }
    } catch (e) {
      getFullAddress.value = "Adres bulunamadı.";
      print(e);
    }
  }
}
