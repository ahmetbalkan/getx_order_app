import 'package:firebase_getx_order_app/constants/constant.dart';
import 'package:firebase_getx_order_app/view/loginpage/phone_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../locator.dart';

class EnterPage extends StatelessWidget {
  EnterPage({Key? key}) : super(key: key);

  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Image.asset("assets/logo.png", width: 100),
                    ),
                    Text(
                      'Su Sipariş Uygulaması',
                      style: GoogleFonts.quicksand(
                          textStyle: _constants.quicksantMainColorBold(10)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Giriş',
                        style: GoogleFonts.quicksand(
                            textStyle: _constants.quicksantMainColorBold(18)),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        'Lütfen sipariş verebilmek için giriş yapınız.',
                        style: GoogleFonts.quicksand(
                            textStyle: _constants.quicksantMainColor(14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () => Get.to(PhonePage()),
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
                                    Icons.login,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Giriş Yap",
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
                  ],
                ),
                Stack(
                  children: [
                    Image.asset("assets/alt.png"),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
