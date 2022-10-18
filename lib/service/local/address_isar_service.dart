import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'isar_base.dart';

class IsarService extends IsarBase {
  Future<void> addAddressLocal(AddressModel addressModel) async {
    try {
      final isar = await db;
      isar.writeTxnSync<int>(() => isar.addressModels.putSync(addressModel));
    } catch (e) {
      debugPrint(
          "IsarAddressService addAddressLocal Exception: " + e.toString());
    }
  }

  Future<List<AddressModel>> getAllAddressLocal() async {
    try {
      final isar = await db;
      return await isar.addressModels.where().findAll();
    } catch (e) {
      debugPrint(
          "IsarAddressService getAllAddressLocal Exception: " + e.toString());
      return [];
    }
  }
}
