import 'package:firebase_getx_order_app/view/homepage/slide_mainpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';
import 'address_widget.dart';
import 'list_product_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var constants = locator.get<Constants>();
    var ct = locator.get<ColorsTheme>();

    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: ct.backgroundColor,
            body: LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AdressWidget(),
                        SlideWidget(),
                        ListProductWidget()
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
