import 'package:flutter/material.dart';
import 'package:ricmobile/login-page.dart';
import 'package:ricmobile/pages/upload.dart';
import 'package:ricmobile/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: RoutesClass.Home,
    getPages: RoutesClass.pages,
  ));
}
