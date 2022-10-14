import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:isar/isar.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> addAddressLocal(AddressModel addressModel) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.addressModels.putSync(addressModel));
  }

  Future<List<AddressModel>> getAllAddressLocal() async {
    final isar = await db;
    return await isar.addressModels.where().findAll();
  }

  Future<void> UpdateisDefault(
      AddressModel addressModelold, AddressModel addressModelnew) async {
    final isar = await db;

    await isar.writeTxn(() async {
      addressModelold.isDefault = "0";
      await isar.addressModels.put(addressModelold); // insert & update
    });

    await isar.writeTxn(() async {
      addressModelnew.isDefault = "1";
      await isar.addressModels.put(addressModelnew); // insert & update
    });
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [AddressModelSchema],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
