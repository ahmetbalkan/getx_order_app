import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_getx_order_app/service/isar_service.dart';

import 'package:firebase_getx_order_app/view/homepage/slide_mainpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../locator.dart';
import '../../model/address_model.dart';
import '../../service/address/address_service.dart';
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
  void initState() {
    super.initState();
    _controller.getAddressList();
  }

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
