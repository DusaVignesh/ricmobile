import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ricmobile/firebase_options.dart';
import 'package:ricmobile/routes/routes.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:ricmobile/services/firebase_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<FirebaseService>(
    FirebaseService(),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    initialRoute: RoutesClass.Home,
    getPages: RoutesClass.pages,
  ));
}
