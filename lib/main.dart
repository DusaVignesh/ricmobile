import 'package:flutter/material.dart';
import 'package:ricmobile/routes/routes.dart';
import 'package:get/get.dart';
//import 'path_to_firebase_service_file/firebase_service.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // GetIt.instance.registerSingleton<FirebaseService>(
  //   FirebaseService(),
  // );
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await Firebase.initializeApp();
  // GetIt.instance.registerSingleton<FirebaseService>(
  //   FirebaseService(),
  // );
  runApp(GetMaterialApp(
    initialRoute: Home,
    getPages: pages,
  ));
}
