import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';
import 'widgets/slide_mainpage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var constants = locator.get<Constants>();
    var ct = locator.get<ColorsTheme>();

    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Image.asset(
                alignment: Alignment.center,
                "assets/logo-white.png",
                width: 75,
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: VerticalDivider(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 15),
                Center(
                    child: FaIcon(
                  FontAwesomeIcons.headset,
                  size: 25,
                  color: Colors.white,
                )),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(FontAwesomeIcons.locationDot,
                                    color: ct.mainColor, size: 25),
                                Text(
                                  " Ev, Halkalı Merkez ",
                                  style: constants.quicksantBlackColor(16),
                                ),
                                FaIcon(FontAwesomeIcons.angleDown,
                                    color: ct.mainColor),
                              ]),
                        ),
                        Divider(
                          height: 1,
                          color: Colors.black45,
                        ), 
                      ],
                    ),
                  ),
                  SlideMainPage(),
                ],
              ),
            ),
          ),
        ));
  }
}
