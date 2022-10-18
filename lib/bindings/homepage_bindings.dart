import 'package:firebase_getx_order_app/controller/address_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AddressController());
  }
}
