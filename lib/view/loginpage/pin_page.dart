import 'package:firebase_getx_order_app/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../constants/colors.dart';
import '../../constants/constant.dart';
import '../../locator.dart';

class PinPage extends StatefulWidget {
  PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  LoginController _controller = Get.put(LoginController());

  var _constants = locator.get<Constants>();
  var _ct = locator.get<ColorsTheme>();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  Constants constants = Constants();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String countrycode = "90";
    String phonenumber = "";
    String pincode = "";
    final focusNode = FocusNode();
    bool showError = false;

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    const borderColor = Color.fromRGBO(114, 178, 238, 1);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: GoogleFonts.poppins(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
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
                          'Su Sipari?? Uygulamas??',
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
                              'Kod onay sayfas??',
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
                              'L??tfen telefonunuza iletilen 6 haneli kodu giriniz.',
                              style: GoogleFonts.quicksand(
                                  textStyle: constants.quicksantMainColor(14)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 68,
                              child: Pinput(
                                length: 6,
                                controller: controller,
                                focusNode: focusNode,
                                defaultPinTheme: defaultPinTheme,
                                androidSmsAutofillMethod:
                                    AndroidSmsAutofillMethod.smsRetrieverApi,
                                onCompleted: (pin) {
                                  pincode = pin;
                                },
                                autofocus: true,
                                focusedPinTheme: defaultPinTheme.copyWith(
                                  height: 68,
                                  width: 64,
                                  decoration:
                                      defaultPinTheme.decoration!.copyWith(
                                    border: Border.all(color: borderColor),
                                  ),
                                ),
                                errorPinTheme: defaultPinTheme.copyWith(
                                  decoration: BoxDecoration(
                                    color: errorColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Countdown(
                                seconds: 180,
                                build: (BuildContext context, double time) =>
                                    Text(
                                  time.toInt().toString() +
                                      " saniye i??erisinde kodu girmeniz gerekiyor.",
                                  style: constants.quicksantMainColor(12),
                                ),
                                interval: Duration(milliseconds: 120),
                                onFinished: () {
                                  Get.back();
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton.icon(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: Icon(Icons.app_registration),
                                    label: Text("Numaray?? de??i??tir.")),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                _controller.loginPhone(
                                    pincode, _controller.verId);
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          size: 20,
                                          Icons.check_sharp,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text(
                                            "Onayla",
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
