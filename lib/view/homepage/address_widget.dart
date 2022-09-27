import 'package:firebase_getx_order_app/locator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/colors.dart';
import '../../../constants/constant.dart';

class AdressWidget extends StatelessWidget {
  const AdressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var constants = locator.get<Constants>();
    var ct = locator.get<ColorsTheme>();

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 320,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 10, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(FontAwesomeIcons.locationDot,
                              color: ct.mainColor, size: 25),
                          Text(
                            " Ev, Halkalı Merkez ",
                            style: constants.quicksantMainColor(12),
                          ),
                          FaIcon(FontAwesomeIcons.angleDown,
                              color: ct.mainColor),
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                  child: Center(
                    child: Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.plus,
                          size: 20,
                          color: ct.mainColor,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Ekle",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: ct.mainColor),
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}
