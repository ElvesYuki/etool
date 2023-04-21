import 'package:get/get.dart';

class MyController extends GetxController {
  static MyController get to => Get.find(); // add this line

  var count = 0.abs();
  void increment() {
    count++;
    update();
  }
}
