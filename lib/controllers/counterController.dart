import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;

  increment() {
    count++;
    update();
  }

  decrement() {
    count--;
    update();
  }
}