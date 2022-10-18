import 'package:dio/dio.dart';
import 'package:firebase_getx_order_app/controller/address_controller.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';
import 'adress_bottomsheet_list_widget.dart';

class AdressWidget extends StatelessWidget {
  const AdressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _constants = locator.get<Constants>();
    var _ct = locator.get<ColorsTheme>();
    List<Widget> boxes = [];
    AddressController _addressController = Get.find();

    return InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => AdressListWidget(),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                            left: 15, right: 10, top: 20, bottom: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: FaIcon(FontAwesomeIcons.locationDot,
                                    color: _ct.mainColor, size: 30),
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Center(
                                      child: GetBuilder<AddressController>(
                                    init: AddressController(),
                                    initState: (_) {},
                                    builder: (_) {
                                      if (_addressController
                                              .activeAddress.value.addressid !=
                                          null) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Adres: ",
                                                style: _constants
                                                    .quicksantMainThinColor(
                                                        18)),
                                            Text(
                                              _addressController.activeAddress
                                                  .value.addresstitle!,
                                              style: _constants
                                                  .quicksantMainColor(18),
                                            )
                                          ],
                                        );
                                      } else {
                                        return Text(
                                          "Liste Boş",
                                          style:
                                              _constants.quicksantMainColor(18),
                                        );
                                      }
                                    },
                                  ))),
                              Expanded(
                                flex: 1,
                                child: FaIcon(FontAwesomeIcons.angleDown,
                                    color: _ct.mainColor),
                              ),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16),
                      child: Center(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              size: 20,
                              color: _ct.mainColor,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Ekle",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: _ct.mainColor),
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
        ));
  }
}
