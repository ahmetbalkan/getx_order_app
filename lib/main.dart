import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_getx_order_app/constants/colors.dart';
import 'package:firebase_getx_order_app/view/enter_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

ColorsTheme ct = ColorsTheme();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sual',
      theme: ThemeData(
        primarySwatch: ct.materialColorMain,
      ),
      home: EnterPage(),
    );
  }
}
