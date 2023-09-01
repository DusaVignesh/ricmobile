import 'package:flutter/material.dart';
import 'package:ricmobile/routes/routes.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RoutesClass.Home,
    getPages: RoutesClass.pages,
  ));
}
