import 'package:firebase_getx_order_app/model/active_address_model.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:geolocator/geolocator.dart';

abstract class AddressBase {
  addAddress(AddressModel address);
  Future<List<AddressModel>> getAllAdress();
  addUpdateDefaultAddress(ActiveAddressModel activeAddress);
  Future<ActiveAddressModel> getActiveAddressID();
}
