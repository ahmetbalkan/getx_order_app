import 'dart:async';
import 'package:firebase_getx_order_app/view/address/adress_form_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../controller/location_controller.dart';
import '../../locator.dart';

class AdressMapPage extends StatefulWidget {
  const AdressMapPage({Key? key}) : super(key: key);

  @override
  _AdressMapPageState createState() => _AdressMapPageState();
}

class _AdressMapPageState extends State<AdressMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();
  LocationController _locationController = Get.put(LocationController());
  late BitmapDescriptor customIcon;

  @override
  void initState() {
    _locationController.getLocation();
    _gotoLocation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: GetX<LocationController>(
          builder: (c) => c.isLocationLoading == true
              ? Center(child: _constants.loadingWidget(300))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: GoogleMap(
                              mapType: MapType.normal,
                              onCameraIdle: () {
                                getCenter();
                              },
                              initialCameraPosition: CameraPosition(
                                target: LatLng(c.currentLatlng.value.latitude,
                                    c.currentLatlng.value.longitude),
                                zoom: 18,
                              ),
                              onCameraMove: (position) async {},
                              onMapCreated:
                                  (GoogleMapController controller) async {
                                _controller.complete(controller);
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: FaIcon(
                                  FontAwesomeIcons.locationDot,
                                  color: _ct.mainColor,
                                  size: 45,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 2,
                            color: _ct.mainColor,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(
                                      FontAwesomeIcons.house,
                                      color: _ct.mainColor,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Adres : ",
                                            style: _constants
                                                .quicksantMainColor(14),
                                          ),
                                          Text(
                                            _locationController
                                                .getFullAddress.value,
                                            style: _constants
                                                .quicksantBlackThinColor(14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        Get.to(AdressFormPage());
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
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
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
        ));
  }

  Future<void> _gotoLocation() async {
    Position po = await Geolocator.getCurrentPosition();
    GoogleMapController controller = await _controller.future;

    controller.moveCamera(
        CameraUpdate.newLatLngZoom(LatLng(po.latitude, po.longitude), 18));
    _locationController.locationToAddress(LatLng(po.latitude, po.longitude));
  }

  getCenter() async {
    final GoogleMapController controller = await _controller.future;

    LatLngBounds bounds = await controller.getVisibleRegion();
    LatLng center = LatLng(
      (bounds.northeast.latitude + bounds.southwest.latitude) / 2,
      (bounds.northeast.longitude + bounds.southwest.longitude) / 2,
    );
    _locationController
        .locationToAddress(LatLng(center.latitude, center.longitude));
  }
}
