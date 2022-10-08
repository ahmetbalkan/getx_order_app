import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../view/main_page.dart';

class LoginController extends GetxController {
  var verId = "".obs;

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
