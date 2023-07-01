import 'package:flutter/material.dart';

class CustomButton {
  const CustomButton(
      {required this.text,
      required this.primaryColor,
      required this.secondaryColor,
      required this.width,
      required this.iconData});
  final IconData iconData;
  final String text;
  final Color primaryColor, secondaryColor;
  final double width;
  Widget button() {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            color: secondaryColor,
            child: IconButton(
              icon: Icon(
                iconData,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
