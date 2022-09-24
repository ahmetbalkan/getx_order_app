import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'constants/colors.dart';
import 'constants/constant.dart';


final locator = GetIt.I;

void locatorMethod() async {
  locator.registerLazySingleton(() => Constants());
  locator.registerLazySingleton(() => ColorsTheme());
}
