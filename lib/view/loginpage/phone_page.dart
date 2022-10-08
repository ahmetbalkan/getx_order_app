import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../controller/login_controller.dart';
import '../../locator.dart';
import '../../main.dart';
import 'pin_page.dart';

class PhonePage extends StatefulWidget {
  PhonePage({Key? key}) : super(key: key);

  @override
  State<PhonePage> createState() => _PhonePageState();
}

LoginController _controller = Get.put(LoginController());

var _constants = locator.get<Constants>();
var _ct = locator.get<ColorsTheme>();

class _PhonePageState extends State<PhonePage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String countrycode = "90";
    String phonenumber = "";
    bool showindicator = true;

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return showindicator == false
        ? Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Expanded(
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
                                child:
                                    Image.asset("assets/logo.png", width: 100),
                              ),
                              Text(
                                'Su Sipariş Uygulaması',
                                style: GoogleFonts.quicksand(
                                    textStyle:
                                        _constants.quicksantMainColorBold(10)),
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
                                        textStyle: _constants
                                            .quicksantMainColorBold(18)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Lütfen giriş yapmak için telefon numaranızı 0\'dan itibaren giriniz. (örnek: 551 111 11 11)',
                                    style: GoogleFonts.quicksand(
                                        textStyle:
                                            _constants.quicksantMainColor(14)),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  IntlPhoneField(
                                    style: _constants.quicksantGrey(17),
                                    dropdownTextStyle:
                                        _constants.quicksantGrey(16),
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
                                      phonenumber = phone.completeNumber;
                                    },
                                    onCountryChanged: (country) {
                                      setState(() {
                                        countrycode = country.dialCode;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      try {
                                        _controller.sendCode(phonenumber);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PinPage()));
                                      } catch (e) {}
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                  "Giriş Yap",
                                                  style: _constants
                                                      .quicksantwhite(17),
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
