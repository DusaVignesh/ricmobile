import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxString showmyprofile = "moreinfo".obs;
  RxBool initialLogin = true.obs;
  RxBool test = false.obs;
  RxBool passwordVisible = false.obs;
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController countryCode = TextEditingController();
}
