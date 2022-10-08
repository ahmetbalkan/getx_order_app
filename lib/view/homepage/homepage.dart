import 'package:firebase_getx_order_app/view/homepage/slide_mainpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/address_controller.dart';
import '../../locator.dart';
import '../../model/address_model.dart';
import '../address/address_widget.dart';
import 'list_product_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: GetBuilder<AddressController>(
                        init: AddressController(),
                        initState: (_) {},
                        builder: (_) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    AddressModel addressModel = AddressModel(
                                        addressid: '',
                                        namesurname: "ahmet",
                                        addresstitle: "ew",
                                        county: "Türkiye",
                                        town: "ist",
                                        quarter: "halkalı",
                                        street: "turgutlu",
                                        no: "8",
                                        floor: "4",
                                        doornumber: "9",
                                        lat: '1.1',
                                        longi: '1.1',
                                        fulladdress:
                                            "asdasdasdasdasd asdasdasd asd");
                                    /* county: 
                              town: 
                              quarter: 
                              street: 
                              no: 
                              floor: 
                              doornumber: 
                              lat: _.formAdressModel.value!.lat,
                              longi: _.formAdressModel.value!.longi,
                              fulladdress:
                                  _.formAdressModel.value!.fulladdress);*/
                                    _.addAddress(addressModel);
                                  },
                                  child: Text("asdasd")),
                              AdressWidget(),
                              SlideWidget(),
                              ListProductWidget()
                            ],
                          );
                        },
                      )),
                );
              },
            ),
          ),
        ));
  }
}
