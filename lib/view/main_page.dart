import 'package:firebase_getx_order_app/view/profilepage/profile_page.dart';
import 'package:firebase_getx_order_app/view/repeat_order_page/repeat_order_page.dart';
import 'package:firebase_getx_order_app/view/shopping_cart/shopping_cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
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

late PageController _pageController;
late PersistentTabController _controller;

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: _ct.backgroundColor,
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
              body: PersistentTabView(
                context,
                controller: _controller,
                screens: _buildScreens(),
                items: _navBarsItems(),
                confineInSafeArea: true,
                backgroundColor: Colors.white,
                handleAndroidBackButtonPress: true,
                resizeToAvoidBottomInset: true,
                stateManagement: true,
                hideNavigationBarWhenKeyboardShows: true,
                decoration: NavBarDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  colorBehindNavBar: Colors.white,
                ),
                popAllScreensOnTapOfSelectedTab: true,
                popActionScreens: PopActionScreensType.all,
                itemAnimationProperties: ItemAnimationProperties(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.ease,
                ),
                screenTransitionAnimation: ScreenTransitionAnimation(
                  animateTabTransition: true,
                  curve: Curves.linear,
                  duration: Duration(milliseconds: 200),
                ),
                navBarStyle: NavBarStyle.style16,
              )),
        ));
  }

  List<Widget> _buildScreens() {
    return [
      Homepage(),
      OppurtunityPage(),
      RepeatOrderPage(),
      ShoppingCartPage(),
      ProfilePage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: _ct.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.star),
        title: ("Fırsatlar"),
        activeColorPrimary: _ct.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.repeat, color: Colors.white),
        title: ("Sipariş Tekrarı"),
        activeColorPrimary: _ct.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Stack(
          children: [
            Container(child: Icon(CupertinoIcons.shopping_cart)),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        title: ("Sepet"),
        activeColorPrimary: _ct.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: _ct.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
