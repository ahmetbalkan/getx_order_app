import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_getx_order_app/model/active_address_model.dart';

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

class Homepage extends StatelessWidget {
  Homepage({
    Key? key,
  }) : super(key: key);

  final AddressController _addressController = Get.put(AddressController());
  final _addressService = locator.get<AddressService>();
  var _isarService = locator.get<IsarService>();

  @override
  Widget build(BuildContext context) {
    print(_addressController.addressList.length);
    var _constants = locator.get<Constants>();
    var _ct = locator.get<ColorsTheme>();
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return Container(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.vertical,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              AdressWidget(),
                              SlideWidget(),
                              ListProductWidget(),
                            ])),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
