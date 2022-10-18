import 'package:firebase_getx_order_app/model/active_address_model.dart';
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

  Future<void> addActiveAddressLocal(
      ActiveAddressModel activeAddressModel) async {
    try {
      final isar = await db;

      ActiveAddressModel aam =
          ActiveAddressModel(activeid: "", addressid: "", userid: "");

      aam.id = 1;
      aam.activeid = activeAddressModel.activeid;
      aam.addressid = activeAddressModel.addressid;
      aam.userid = activeAddressModel.userid;

      await isar.writeTxn(() async {
        await isar.activeAddressModels.put(aam);
      });
    } catch (e) {
      debugPrint("IsarAddressService addActiveAddressLocal Exception: " +
          e.toString());
    }
  }

  Future<ActiveAddressModel> getActiveAddressLocalID() async {
    try {
      final isar = await db;
      var list = await isar.activeAddressModels.where().findAll();
      return list[0];
    } catch (e) {
      debugPrint(
          "IsarAddressService getAllAddressLocal Exception: " + e.toString());
      return ActiveAddressModel();
    }
  }

  Future<void> cleanActiveAddressDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.activeAddressModels.clear());
  }
}
