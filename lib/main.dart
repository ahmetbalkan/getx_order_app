import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx_order_app/bindings/homepage_bindings.dart';
import 'package:firebase_getx_order_app/constants/colors.dart';
import 'package:firebase_getx_order_app/controller/address_controller.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:firebase_getx_order_app/view/enter_page.dart';
import 'package:firebase_getx_order_app/view/homepage/homepage.dart';
import 'package:firebase_getx_order_app/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'constants/constant.dart';
import 'firebase_options.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  locatorMethod();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

var _constants = locator.get<Constants>();
var _ct = locator.get<ColorsTheme>();

FirebaseAuth auth = FirebaseAuth.instance;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = auth.currentUser;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/home",
          page: () => Homepage(),
          binding: HomeBindings(),
          transition: Transition.leftToRightWithFade,
          opaque: false,
          showCupertinoParallax: true,
        ),
      ],
      title: 'Sual',
      theme: ThemeData(
        primarySwatch: _ct.materialColorMain,
      ),
      home: user != null ? MainPage() : EnterPage(),
    );
  }
}
