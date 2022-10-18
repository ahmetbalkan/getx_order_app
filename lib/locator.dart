import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'constants/colors.dart';
import 'constants/constant.dart';
import 'service/api/address/address_service.dart';
import 'service/local/address_isar_service.dart';

final locator = GetIt.I;

void locatorMethod() async {
  locator.registerLazySingleton(() => Constants());
  locator.registerLazySingleton(() => ColorsTheme());
  locator.registerLazySingleton(() => AddressService());
  locator.registerLazySingleton(() => IsarService());
}
