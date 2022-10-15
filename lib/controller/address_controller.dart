import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../locator.dart';

import '../service/address/address_service.dart';
import '../service/address/adress_base.dart';

AddressBase _addressService = locator.get<AddressService>();

final FirebaseAuth auth = FirebaseAuth.instance;

class AddressController extends GetxController {
  var addressList = <AddressModel>[].obs;
  final Rx<List<AddressModel>> _videoList = Rx<List<AddressModel>>([]);
  var currentLatlng = LatLng(41.0255771, 28.9728992).obs;
  var isDataLoading = false.obs;
  var isLocationLoading = false.obs;
  var getFullAddress = "".obs;
  Rxn<String> rxstring = Rxn<String>();
  var formAdressModel = Rxn<AddressModel>();
  var homePageAddressModel = AddressModel().obs;

  var permission = LocationPermission.denied.obs;
  late bool serviceEnabled;

  @override
  void onInit() {
    getAddressList();
    super.onInit();
  }

  getAddressList() async {
    try {
      isDataLoading(true);
      addressList.value = await _addressService.getAllAdress();
      var b = addressList
          .where((element) => element.isDefault!.contains("1"))
          .toList();
      homePageAddressModel.value = b.first;
      update();
    } catch (e) {
      print(e);
    } finally {
      isDataLoading(false);
    }
  }

  addAddress(AddressModel addressModel) async {
    try {
      _addressService.addAddress(addressModel);
      getAddressList();
      update();
    } catch (e) {
      print(e);
    }
  }

  isDefaultUpdate(int isDefault, int id) async {
    try {
      isDataLoading.value = true;
      await _addressService.isDefaultUpdate(isDefault);
      getAddressList();
      homePageAddressModel.value = addressList[id];
    } catch (e) {
      print(e);
    } finally {
      isDataLoading.value = false;
    }
  }

  getLocation() async {
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
              fulladdress: fullAddress,
              isDefault: 1.toString());
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
