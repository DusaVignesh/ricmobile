import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:get/get.dart';
import 'package:ricmobile/custom/snackbar.dart';

import '../custom/text-field.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  Flushbar flushbar = Flushbar();
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0E243A),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width - 20,
                height: size.height * 0.625,
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/logo-white.png',
                              width: double.infinity,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            for (int i = 0; i < CustomTextField.length; i++)
                              CustomTextField(
                                      text: 'Email ID',
                                      hinttext: 'Enter email ID',
                                      lines: 1,
                                      textColor: Colors.black,
                                      textFieldColor: Colors.grey,
                                      borderColor: Colors.black26,
                                      fontSize: 16)
                                  .textField()[i],
                            SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                show(
                                    context,
                                    CustomSnackbar(
                                      messageText: 'Successfully email sent',
                                      context: context,
                                    ).topSnackbar());
                              },
                              child: Container(
                                  padding: EdgeInsets.all(12),
                                  alignment: Alignment.center,
                                  width: double.maxFinite,
                                  child: Text('Submit')),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff0E243A),
                                  textStyle: TextStyle(fontSize: 16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have account?',
                          style: TextStyle(color: Colors.white60, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Future.delayed(Duration(milliseconds: 200), () {
                              Get.back();
                            });
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Future show(BuildContext context, Flushbar newFlushbar) async {
    Future.wait([flushbar.dismiss()]);
    newFlushbar.show(context);
    flushbar = newFlushbar;
  }
}
