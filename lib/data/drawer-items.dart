import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fa.dart';
import 'package:iconify_flutter/icons/fe.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:ricmobile/helpers/ricfont.dart';

class DrawerItems extends GetxController {
  final List<String> titles = [
    "Dashboard",
    "My Profile",
    "eCertificate",
    "Upload Files",
    "Change Password",
    "Logout"
  ];
  // Widget icon(id, selected) {
  //   return Iconify();
  // }
  String temp = 'MaterialSymbols.team_dashboard';
  final List<IconData> leadingIcons = [
    FlutterFontIcons.dashboard,
    FlutterFontIcons.profile,
    FlutterFontIcons.certificate,
    FlutterFontIcons.upload,
    FlutterFontIcons.profile,
    FlutterFontIcons.logout,
  ];
  final List<bool> selectedItem = List.generate(6, (index) => false);
}
