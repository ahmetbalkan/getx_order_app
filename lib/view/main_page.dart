import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_getx_order_app/view/profilepage/profile_page.dart';
import 'package:firebase_getx_order_app/view/shopping_cart/shopping_cart_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../constants/constant.dart';
import '../locator.dart';
import 'homepage/homepage.dart';
import 'opportunity_page/oppurtunity_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

final screen = [
  const Homepage(),
  const OppurtunityPage(),
  const ShoppingCartPage(),
  const ProfilePage(),
];

int currentindex = 0;

class _MainPageState extends State<MainPage> {
  final _bottomBarController = BottomBarWithSheetController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    var constants = locator.get<Constants>();
    var ct = locator.get<ColorsTheme>();

    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
              bottomNavigationBar: BottomBarWithSheet(
                controller: _bottomBarController,
                autoClose: true,
                mainActionButtonBuilder: (context) {
                  return Image.asset(
                    "assets/button.png",
                    width: 60,
                  );
                },
                mainActionButtonTheme: MainActionButtonTheme(
                  color: ct.mainColor,
                  size: 22,
                  icon: const FaIcon(
                    FontAwesomeIcons.retweet,
                    color: Colors.white,
                  ),
                ),
                bottomBarTheme: const BottomBarTheme(
                  selectedItemIconSize: 35,
                  mainButtonPosition: MainButtonPosition.middle,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                  ),
                  itemIconColor: Colors.grey,
                  itemTextStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                  ),
                  selectedItemIconColor: Colors.blue,
                  selectedItemTextStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.0,
                  ),
                ),
                onSelectItem: (index) {
                  setState(() {
                    if (index == 2) {
                      _bottomBarController.openSheet();
                    } else {
                      currentindex = index;
                      _bottomBarController.closeSheet();
                    }
                  });
                },
                sheetChild: Center(
                  child: Column(
                    children: [
                      Text(
                        "Another content",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _bottomBarController.closeSheet();
                          },
                          child: const Text("Kapat"))
                    ],
                  ),
                ),
                items: const [
                  BottomBarWithSheetItem(
                      icon: Icons.people, label: "Ana Sayfa"),
                  BottomBarWithSheetItem(icon: Icons.settings, label: "Fırsat"),
                  BottomBarWithSheetItem(
                      icon: Icons.shopping_cart, label: "Sepet"),
                  BottomBarWithSheetItem(icon: Icons.favorite, label: "Profil"),
                ],
              ),
              backgroundColor: ct.backgroundColor,
              appBar: AppBar(
                title: Image.asset(
                  alignment: Alignment.center,
                  "assets/logo-white.png",
                  width: 75,
                ),
                centerTitle: true,
                actions: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: const VerticalDivider(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Center(
                      child: const FaIcon(
                    FontAwesomeIcons.headset,
                    size: 25,
                    color: Colors.white,
                  )),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              body: screen[currentindex]),
        ));
  }
}
