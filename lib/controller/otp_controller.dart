import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  final List<TextEditingController> controllers =
      List.generate(4, (_) => TextEditingController());
  final RxList<String> otpDigits = List.filled(4, '').obs;

  void updateDigit(int index, String value) {
    otpDigits[index] = value;
  }

  String get otp => otpDigits.join();

  void clearAll() {
    for (var controller in controllers) {
      controller.clear();
    }
    otpDigits.value = List.filled(4, '');
  }
}
