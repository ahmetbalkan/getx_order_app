import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/colors.dart';
import '../../constants/constant.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  ColorsTheme ct = ColorsTheme();
  Constants constants = Constants();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Expanded(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                //
                child: Image(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/alt.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                              textStyle: constants.quicksantMainColorBold(10)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30),
                            Text(
                              'Telefon numarası ile giriş',
                              style: GoogleFonts.quicksand(
                                  textStyle:
                                      constants.quicksantMainColorBold(18)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Divider(),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lütfen giriş yapmak için telefon numaranızı giriniz.',
                              style: GoogleFonts.quicksand(
                                  textStyle: constants.quicksantMainColor(14)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            IntlPhoneField(
                              dropdownTextStyle: constants.quicksantGrey(16),
                              invalidNumberMessage:
                                  "Numara şartları sağlamıyor.",
                              initialCountryCode: "TR",
                              controller: controller,
                              decoration: InputDecoration(
                                hintText: 'Telefon Numaranız',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              onCountryChanged: (country) {
                                print('Country changed to: ' + country.name);
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () => print(controller.text),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      ct.mainColor,
                                      ct.mainColor2,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          size: 20,
                                          Icons.login,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text(
                                            "Giriş Yap",
                                            style: constants.quicksantwhite(17),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
