import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/address_model.dart';

class LocationController extends GetxController {
  var currentLatlng = LatLng(41.0255771, 28.9728992).obs;
  var isLocationLoading = false.obs;
  var getFullAddress = "".obs;
  var formAdressModel = Rxn<AddressModel>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  getLocation() async {
    try {
      isLocationLoading(true);
      Position position = await Geolocator.getCurrentPosition();
      currentLatlng.value = LatLng(position.latitude, position.latitude);
    } catch (e) {
      debugPrint("LocationControoler getLocation Exception: " + e.toString());
    } finally {
      isLocationLoading(false);
    }
  }

  locationToAddress(LatLng latLng) async {
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
              addressid: "0",
              userid: auth.currentUser!.uid,
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
    }
  }
}
