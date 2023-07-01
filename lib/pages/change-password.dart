import 'package:flutter/material.dart';
import 'package:ricmobile/custom/text-field.dart';
import 'package:ricmobile/helpers/ricfont.dart';

import '../custom/appbar.dart';
import '../custom/button.dart';
import '../custom/drawerTest.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(context: context).appbar(),
      drawer: DrawerTest(
        id: id,
      ),
      drawerScrimColor: Colors.transparent,
      backgroundColor: Color(0xffF4F5F7),
      body: SingleChildScrollView(
          child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Change Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(30),
                height: size.height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < CustomTextField.length; i++)
                      CustomTextField(
                              text: 'New Password',
                              hinttext: 'New password',
                              lines: 1,
                              password: true)
                          .textField()[i],
                    for (int i = 0; i < CustomTextField.length; i++)
                      CustomTextField(
                              text: 'Confirm Password',
                              hinttext: 'Confirm password',
                              lines: 1,
                              password: true)
                          .textField()[i],
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                            text: 'Continue & Save',
                            primaryColor: Color(0xffF1556C),
                            secondaryColor: Color.fromARGB(255, 236, 45, 73),
                            width: 185,
                            iconData: FlutterFontIcons.homesearch)
                        .button(),
                  ],
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
