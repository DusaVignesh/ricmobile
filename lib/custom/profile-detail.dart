import 'package:flutter/material.dart';

class ProfileDetail {
  const ProfileDetail({required this.text, required this.iconData});
  final IconData iconData;
  final String text;
  List<Widget> detail() {
    return [
      SizedBox(
        height: 25,
      ),
      Container(
        height: 55,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Color(0xffECEFF1)),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Color(0xff343A3F),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text.toUpperCase(),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff343A3F)),
            ),
          ],
        ),
      ),
    ];
  }
}
