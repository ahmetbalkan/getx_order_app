import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:firebase_getx_order_app/view/homepage/slide_mainpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../locator.dart';
import '../../model/address_model.dart';
import '../../service/api/address/address_service.dart';
import '../../service/local/address_isar_service.dart';
import '../address/homepage_address_widget.dart';
import 'list_product_widget.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

var _addressService = locator.get<AddressService>();
var _isarService = locator.get<IsarService>();

class _HomepageState extends State<Homepage> {
  AddressController _controller = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    var _constants = locator.get<Constants>();
    var _ct = locator.get<ColorsTheme>();
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return Container(
                  child: SingleChildScrollView(
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
                            ElevatedButton(
                                onPressed: () async {
                                  AddressModel addressModel = AddressModel(
                                    addressid: '',
                                    userid: "serid",
                                    namesurname: "_nameSurnameController.text",
                                    addresstitle:
                                        "_addressTitleController.text",
                                    county:
                                        "_countryController.text.toString()",
                                    town: "_cityController.text.toString()",
                                    quarter:
                                        " _quarterController.text.toString()",
                                    street: "_streetController.text.toString()",
                                    no: "_noController.text.toString()",
                                    floor: "_floorController.text.toString()",
                                    doornumber:
                                        "_doorController.text.toString()",
                                    lat: "lat",
                                    longi: "longi",
                                    fulladdress: "",
                                  );
                                  var a = await _addressService
                                      .addAddress(AddressModel());

                                  var b = _isarService.getAllAddressLocal();
                                  print(b.toString());
                                },
                                child: Text("asdasd")),
                            AdressWidget(),
                            SlideWidget(),
                            ListProductWidget(),
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
