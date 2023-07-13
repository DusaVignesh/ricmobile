import 'package:get/route_manager.dart';
import 'package:ricmobile/login-page.dart';
import 'package:ricmobile/pages/Logout.dart';
import 'package:ricmobile/pages/change-password.dart';
import 'package:ricmobile/pages/dashboard.dart';
import 'package:ricmobile/pages/eCertificate.dart';
import 'package:ricmobile/pages/homepage.dart';
import 'package:ricmobile/pages/upload-files.dart';

import '../pages/my-profile.dart';

List<String> navigation = [
  "/dashboard",
  "/myprofile",
  "/eCertificate",
  "/uploadfiles",
  "/changepassword",
  "/logout"
];
Map<String, String> appbar = {
  "/changepassword": "Change Password",
  "/logout": "Logout",
};
List<MapEntry<String, String>> appbarList = appbar.entries.toList();
String Home = "/";
String loginPage = "/loginPage";
String getHomeRoute() => Home;
List<GetPage> pages = [
  GetPage(name: Home, page: () => Homepage()),
  GetPage(name: loginPage, page: () => LoginPage()),
  GetPage(
      name: navigation[0],
      page: () => Dashboard(
            id: 0,
          )),
  GetPage(
    name: navigation[1],
    page: () => const MyProfile(
      id: 1,
    ),
  ),
  GetPage(
      name: navigation[2],
      page: () => const eCertificate(
            id: 2,
          )),
  GetPage(
      name: navigation[3],
      page: () => const UploadFiles(
            id: 3,
          )),
  GetPage(
      name: navigation[4],
      page: () => const ChangePassword(
            id: 4,
          )),
  GetPage(name: navigation[5], page: () => const Logout(id: 5)),
];
