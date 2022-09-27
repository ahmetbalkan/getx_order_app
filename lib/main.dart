import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx_order_app/constants/colors.dart';
import 'package:firebase_getx_order_app/view/enter_page.dart';
import 'package:firebase_getx_order_app/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants/constant.dart';
import 'firebase_options.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  locatorMethod();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  runApp(const MyApp());
}

var constants = locator.get<Constants>();
var ct = locator.get<ColorsTheme>();

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
          primarySwatch: ct.materialColorMain,
        ),
        home: MainPage()
        //user != null ? MainPage() : EnterPage(),
        );
  }
}
