import 'package:flutter/material.dart';
import 'package:ricmobile/login-page.dart';
import 'package:ricmobile/pages/upload.dart';
import 'package:ricmobile/routes/routes.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: RoutesClass.Home,
    getPages: RoutesClass.pages,
  ));
}





// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );