import 'package:firebase_getx_order_app/service/isar_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'constants/colors.dart';
import 'constants/constant.dart';
import 'service/address/address_service.dart';

final locator = GetIt.I;

void locatorMethod() async {
  locator.registerLazySingleton(() => Constants());
  locator.registerLazySingleton(() => ColorsTheme());
  locator.registerLazySingleton(() => AddressService());
  locator.registerLazySingleton(() => IsarService());
}
