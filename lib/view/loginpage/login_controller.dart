import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_getx_order_app/view/main_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../locator.dart';
import 'pin_page.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var verId = "".obs;
  var isCodeSend = false.obs;
  var isLoginComplete = false.obs;

  var box = locator.get<GetStorage>();

  FirebaseAuth auth = FirebaseAuth.instance;
  void sendCode(phone) async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          verId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
        timeout: const Duration(seconds: 120),
      );
    } catch (e) {
      print(e);
    }
  }

  void loginPhone(pin, verid) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verId.value, smsCode: pin);
      await auth.signInWithCredential(credential);
      Get.offAll(MainPage());
    } catch (e) {
      Get.snackbar("Kodunuz Hatalı", "Lütfen doğru kodu giriniz.");
    }
  }
}
