import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class CustomTextField {
  CustomTextField(
      {required this.text,
      required this.hinttext,
      required this.lines,
      this.textColor = const Color(0xff6C757D),
      this.textFieldColor = Colors.grey,
      this.borderColor = Colors.black26,
      this.fontSize = 14,
      this.password = false});
  Controller controller = Controller();
  final bool password;
  final double fontSize;
  final String text, hinttext;
  static int length = 4;
  final int lines;
  final Color textColor, textFieldColor, borderColor;
  List<Widget> textField() {
    return [
      SizedBox(
        height: 20,
      ),
      Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w500, fontSize: fontSize),
      ),
      SizedBox(
        height: 10,
      ),
      password == false
          ? TextFormField(
              maxLines: lines,
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: TextStyle(color: textFieldColor),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: borderColor)),
                  border: OutlineInputBorder()),
            )
          : Obx(() {
              return TextFormField(
                obscureText: !controller.passwordVisible.value,
                maxLines: 1,
                style: TextStyle(height: 1),
                decoration: InputDecoration(
                    hintText: hinttext,
                    hintStyle: TextStyle(color: textFieldColor),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: borderColor)),
                    border: OutlineInputBorder(),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffF7F7F7),
                      ),
                      margin: EdgeInsets.only(right: 5),
                      child: IconButton(
                        icon: Icon(
                          controller.passwordVisible == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          controller.passwordVisible.value =
                              controller.passwordVisible.value == true
                                  ? false
                                  : true;
                        },
                      ),
                    )),
              );
            })
    ];
  }
}
