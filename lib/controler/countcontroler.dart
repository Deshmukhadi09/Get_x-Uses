
import 'package:get/get.dart';

class CountContoller extends GetxController {
  int count = 0;

  increamentCounter() {
    count++;
    update();
  }
}