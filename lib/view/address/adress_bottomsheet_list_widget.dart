import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../locator.dart';
import 'adress_map_page.dart';

class AdressListWidget extends StatefulWidget {
  AdressListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AdressListWidget> createState() => _AdressListWidgetState();
}

class _AdressListWidgetState extends State<AdressListWidget> {
  var _constants = locator.get<Constants>();
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  var _ct = locator.get<ColorsTheme>();

  var isChecked = false;
  late Color colorList;

  AddressController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    late LocationPermission permission;
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 20),
                child: Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Adreslerim",
                                style: _constants.quicksantBlackColor(18)),
                            Text(
                                "Kayıtlı Adreslerden adres seçebilir veya yenisini ekleyebilirsiniz.",
                                style: _constants.quicksantBlackThinColor(14)),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              size: 40,
                            ))),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      onTap: () async {
                        permission =
                            await _geolocatorPlatform.checkPermission();
                        if (permission == LocationPermission.denied) {
                          permission =
                              await _geolocatorPlatform.requestPermission();
                          if (permission == LocationPermission.deniedForever) {
                            _constants.Snackbar();
                          }
                        } else {
                          Get.to(AdressMapPage());
                        }

                        print(permission);
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  size: 20,
                                  Icons.login,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Yeni Adres Ekle",
                                    style: _constants.quicksantwhite(17),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: [
                  GetBuilder<AddressController>(
                      init: AddressController(),
                      builder: (controller) {
                        return controller.isDataLoading == true
                            ? Center(
                                child: Column(
                                children: [
                                  CircularProgressIndicator(),
                                ],
                              ))
                            : controller.addressList.length == 0
                                ? Column(children: [
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Icon(
                                      Icons.error,
                                      size: 50,
                                      color: _ct.mainColor,
                                    ),
                                    Text(
                                      "Adresiniz bulunmuyor. Lütfen adres ekleyiniz.",
                                      style: _constants.quicksantBlackColor(16),
                                    )
                                  ])
                                : ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: controller.addressList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 30),
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.blue.shade300,
                                                  width: 1,
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    flex: 8,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 5,
                                                                  horizontal:
                                                                      20),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.house,
                                                                size: 25,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                controller
                                                                    .addressList[
                                                                        index]
                                                                    .addresstitle!,
                                                                style: _constants
                                                                    .quicksantBlackColor(
                                                                        18),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Flexible(
                                                                child: Text(
                                                                  controller
                                                                      .addressList[
                                                                          index]
                                                                      .fulladdress!,
                                                                  style: _constants
                                                                      .quicksantBlackThinColor(
                                                                          15),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Checkbox(
                                                    checkColor: _ct.mainColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    value: false,
                                                    onChanged: (value) {},
                                                  )
                                                ],
                                              )),
                                        ),
                                      );
                                    });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
