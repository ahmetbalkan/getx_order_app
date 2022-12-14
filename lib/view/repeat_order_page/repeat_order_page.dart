import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';

class RepeatOrderPage extends StatefulWidget {
  const RepeatOrderPage({Key? key}) : super(key: key);

  @override
  _RepeatOrderPageState createState() => _RepeatOrderPageState();
}

List<Widget> boxes = [];

var _constants = locator.get<Constants>();
var _ct = locator.get<ColorsTheme>();

class _RepeatOrderPageState extends State<RepeatOrderPage> {
  @override
  void initState() {
    for (var i = 0; i < 9; i++) {
      boxes.add(
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
                child: Container(
                    width: double.infinity,
                    height: 195,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 10, right: 15),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Sipari?? Tarihi:",
                                                    style: _constants
                                                        .quicksantBlackColor(
                                                            14),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "23/10/1990",
                                                    style: _constants
                                                        .quicksantBlackThinColor(
                                                            14),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Toplam:",
                                                      style: _constants
                                                          .quicksantBlackColor(
                                                              18),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "550 TL",
                                                      style: _constants
                                                          .quicksantBlackThinColor(
                                                              18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider()
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Row(
                                    children: [
                                      Padding(
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
                                      Padding(
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
                                    ],
                                  ),
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Durum:",
                                            style: _constants
                                                .quicksantBlackColor(14),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Teslim Edildi.",
                                            style: _constants
                                                .quicksantMainColor(14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                    ))),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Sipari??i Tekrarla",
                                                      style: _constants
                                                          .quicksantwhite(14),
                                                    )),
                                              )
                                            ],
                                          ),
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
                    )),
              ),
            ),
          ],
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(verticalDirection: VerticalDirection.down, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Ge??mi?? Sipari??ler",
            style: _constants.quicksantMainColor(20),
          ),
        ),
        Divider(),
        Text(
          "L??tfen tekrar etmek istedi??iniz sipari??i se??iniz.",
          style: _constants.quicksantBlackThinColor(12),
        ),
        Divider(),
        Container(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 1,
                  ),
                  child: boxes[index],
                );
              }),
        ),
      ]),
    );
  }
}
