import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class CustomIcons {
  const CustomIcons({required this.id, required this.isselected});
  final int id;
  final bool isselected;
  final String temp = " MaterialSymbols.team_dashboard";
  Widget icon() {
    return Iconify(
      temp,
      color: isselected == true ? Colors.blue : Colors.black,
    );
  }
}
