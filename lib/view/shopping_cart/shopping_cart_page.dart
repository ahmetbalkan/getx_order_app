import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

List<Widget> boxes = [];

var _constants = locator.get<Constants>();
var _ct = locator.get<ColorsTheme>();

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  void initState() {
    for (var i = 0; i < 3; i++) {
      boxes.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Checkbox(
                                      value: true,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Container(
                                        padding: EdgeInsets.all(2),
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue.shade100,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: Image.asset(
                                          'assets/damacana.png',
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Depositosuz",
                                          style: _constants
                                              .quicksantBlackThinColor(9),
                                        ),
                                        Text(
                                          "Saka 19 lt Damacana ",
                                          style: _constants
                                              .quicksantBlackThinColor(16),
                                        ),
                                        Text(
                                          "122 TL",
                                          style:
                                              _constants.quicksantMainColor(28),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(children: [
                                            Column(
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border:
                                                          Border.fromBorderSide(
                                                              BorderSide(
                                                                  width: 0.5,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300)),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                    width: 50,
                                                    height: 70,
                                                    child: Center(
                                                        child: Text(
                                                      "0",
                                                      style: _constants
                                                          .quicksantMainColor(
                                                              18),
                                                    )))
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border:
                                                        Border.fromBorderSide(
                                                            BorderSide(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  width: 50,
                                                  height: 35,
                                                  child: Center(
                                                      child: Text(
                                                    "+",
                                                    style: _constants
                                                        .quicksantMainColor(21),
                                                  )),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(10),
                                                    ),
                                                    border:
                                                        Border.fromBorderSide(
                                                            BorderSide(
                                                                width: 0.5,
                                                                color: Colors
                                                                    .grey
                                                                    .shade300)),
                                                  ),
                                                  width: 50,
                                                  height: 35,
                                                  child: Center(
                                                      child: Text(
                                                    "-",
                                                    style: _constants
                                                        .quicksantMainColor(21),
                                                  )),
                                                )
                                              ],
                                            )
                                          ]),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(width: 1, color: Colors.grey.shade200),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ödenecek Tutar: ",
                        style: _constants.quicksantBlackThinColor(16),
                      ),
                      Text(
                        "50 TL",
                        style: _constants.quicksantBlackColor(20),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  _ct.mainColor,
                                  _ct.mainColor2,
                                ],
                                begin: FractionalOffset.center,
                                end: FractionalOffset.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(FontAwesomeIcons.cartShopping,
                                        size: 14, color: Colors.white),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "Sepeti Onayla",
                                        style: _constants.quicksantwhite(14),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sepet",
                  style: _constants.quicksantMainColor(20),
                ),
              ),
              Divider(),
              Text(
                "Lütfen ürünlerinizi kontrol ederek onaylayınız.",
                style: _constants.quicksantBlackThinColor(12),
              ),
              Divider(),
              Container(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 1,
                        ),
                        child: boxes[index],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
