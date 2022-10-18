import 'package:firebase_getx_order_app/model/active_address_model.dart';
import 'package:isar/isar.dart';

import '../../model/address_model.dart';

class IsarBase {
  late Future<Isar> db;

  IsarBase() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [AddressModelSchema, ActiveAddressModelSchema],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
