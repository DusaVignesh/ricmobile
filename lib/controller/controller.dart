import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxString showmyprofile = "moreinfo".obs;
  RxBool initialLogin = true.obs;
  RxBool test = false.obs;
  RxBool passwordVisible = false.obs;
  final TextEditingController countryCode = TextEditingController();
  final TextEditingController studentphoneNumber = TextEditingController();
  final TextEditingController studentnameController = TextEditingController();
  final TextEditingController studentemailController = TextEditingController();
  final TextEditingController studentpasswordController =
      TextEditingController();
  final TextEditingController studentmobileController = TextEditingController();
  final TextEditingController citizenphoneNumber = TextEditingController();
  final TextEditingController citizennameController = TextEditingController();
  final TextEditingController citizenemailController = TextEditingController();
  final TextEditingController citizenpasswordController =
      TextEditingController();
  final TextEditingController citizenmobileController = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
}
