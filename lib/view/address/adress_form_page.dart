import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/controller/location_controller.dart';
import 'package:firebase_getx_order_app/model/address_model.dart';
import 'package:firebase_getx_order_app/view/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../locator.dart';

class AdressFormPage extends StatelessWidget {
  AdressFormPage({Key? key}) : super(key: key);

  Completer<GoogleMapController> _controller = Completer();

  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();
  AddressController _addressController = Get.find();

  final TextEditingController _nameSurnameController = TextEditingController();
  final TextEditingController _addressTitleController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _quarterController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _noController = TextEditingController();
  final TextEditingController _floorController = TextEditingController();
  final TextEditingController _doorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Image.asset(
            alignment: Alignment.center,
            "assets/logo-white.png",
            width: 75,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
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
        body: GetBuilder<LocationController>(
          init: LocationController(),
          initState: (_) {},
          builder: (_) {
            _cityController.text = _.formAdressModel.value!.town!;
            _countryController.text = _.formAdressModel.value!.county!;
            _quarterController.text = _.formAdressModel.value!.quarter!;
            _streetController.text = _.formAdressModel.value!.street!;
            _noController.text = _.formAdressModel.value!.no!;
            return SingleChildScrollView(
              child: Column(children: [
                Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        GoogleMap(
                          mapToolbarEnabled: false,
                          mapType: MapType.normal,
                          zoomControlsEnabled: false,
                          zoomGesturesEnabled: false,
                          initialCameraPosition: CameraPosition(
                            target: LatLng(
                                double.parse(_.formAdressModel.value!.lat!),
                                double.parse(_.formAdressModel.value!.longi!)),
                            zoom: 18,
                          ),
                          onCameraMove: (position) async {},
                          onMapCreated: (GoogleMapController controller) async {
                            _controller.complete(controller);
                          },
                        ),
                        Center(
                          child: FaIcon(
                            FontAwesomeIcons.locationDot,
                            color: _ct.mainColor,
                            size: 25,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Adres Gir",
                          style: _constants.quicksantMainColorBold(18)),
                      Divider(),
                      Text(
                          "Lütfen yıldızlı alanları doldurunuz. Adresinizi doğru yazmanız siparişinizin daha hızlı ulaşmasını sağlayacaktır.",
                          style: _constants.quicksantBlackThinColor(12)),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _nameSurnameController,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(12),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: "İsminiz, Soyisminiz*",
                          border: OutlineInputBorder(),
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _addressTitleController,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(12),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: "Adres Başlığı*",
                          border: OutlineInputBorder(),
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: TextFormField(
                                controller: _cityController,
                                style: TextStyle(color: Colors.grey),
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Şehir*",
                                  enabled: false,
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: TextFormField(
                                controller: _countryController,
                                style: TextStyle(color: Colors.grey),
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Ülke*",
                                  enabled: false,
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: TextFormField(
                                controller: _quarterController,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Mahalle*",
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: TextFormField(
                                controller: _streetController,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Sokak*",
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: TextFormField(
                                controller: _noController,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Bina No*",
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: TextFormField(
                                controller: _floorController,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Kat",
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextFormField(
                                controller: _doorController,
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintMaxLines: 1,
                                  labelText: "Daire*",
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () async {
                          AddressModel addressModel = AddressModel(
                            addressid: '',
                            userid: _.formAdressModel.value!.userid.toString(),
                            namesurname: _nameSurnameController.text,
                            addresstitle: _addressTitleController.text,
                            county: _countryController.text.toString(),
                            town: _cityController.text.toString(),
                            quarter: _quarterController.text.toString(),
                            street: _streetController.text.toString(),
                            no: _noController.text.toString(),
                            floor: _floorController.text.toString(),
                            doornumber: _doorController.text.toString(),
                            lat: _.formAdressModel.value!.lat,
                            longi: _.formAdressModel.value!.longi,
                            fulladdress: _.formAdressModel.value!.fulladdress,
                          );

                          _addressController.addAddress(addressModel);

                          Get.offAll(Homepage());
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _ct.mainColor,
                                _ct.mainColor2,
                              ],
                              begin: FractionalOffset.center,
                              end: FractionalOffset.bottomRight,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
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
                                  Icon(
                                    size: 20,
                                    Icons.add_circle,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Adresi Ekle",
                                      style: _constants.quicksantwhite(17),
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
              ]),
            );
          },
        ));
  }

  Future<BitmapDescriptor> getMark() async {
    BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      "assets/images/bike.png",
    );
    return markerbitmap;
  }
}
