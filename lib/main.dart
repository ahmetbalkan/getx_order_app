import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx_order_app/constants/colors.dart';
import 'package:firebase_getx_order_app/controller/address_controller.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';

import 'package:firebase_getx_order_app/view/enter_page.dart';
import 'package:firebase_getx_order_app/view/homepage/homepage.dart';
import 'package:firebase_getx_order_app/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isar/isar.dart';

import 'constants/constant.dart';
import 'firebase_options.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Isar.open([AddressModelSchema]);
  locatorMethod();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();

  runApp(const MyApp());
}

var _constants = locator.get<Constants>();
var _ct = locator.get<ColorsTheme>();

GetStorage box = GetStorage();
FirebaseAuth auth = FirebaseAuth.instance;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = auth.currentUser;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sual',
      theme: ThemeData(
        primarySwatch: _ct.materialColorMain,
      ),
      home: user != null ? MainPage() : EnterPage(),
    );
  }
}
