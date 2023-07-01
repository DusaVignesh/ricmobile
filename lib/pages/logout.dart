import 'package:flutter/material.dart';

import '../custom/drawerTest.dart';

class Logout extends StatelessWidget {
  const Logout({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0E243A),
      ),
      drawer: DrawerTest(
        id: id,
      ),
      drawerScrimColor: Colors.transparent,
    );
  }
}
