import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/custom/text-field.dart';
import 'package:ricmobile/data/login.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key, required this.title, required this.isCitizen});
  final bool isCitizen;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width - 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: size.width / 2,
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          if (isCitizen == true)
                            for (int j = 0;
                                j < LoginData.citizentitles.length;
                                j++)
                              for (int i = 0; i < CustomTextField.length; i++)
                                CustomTextField(
                                  text: LoginData.citizentitles[j],
                                  hinttext: LoginData.citizenhinttext[j],
                                  lines: 1,
                                  textColor: Colors.black,
                                  textFieldColor: Colors.grey,
                                  borderColor: Colors.black26,
                                  fontSize: 16,
                                  password:
                                      LoginData.citizentitles.length == j + 1
                                          ? true
                                          : false,
                                ).textField()[i],
                          if (isCitizen == false)
                            for (int j = 0;
                                j < LoginData.studenthinttext.length;
                                j++)
                              for (int i = 0; i < CustomTextField.length; i++)
                                CustomTextField(
                                  text: LoginData.studenttitles[j],
                                  hinttext: LoginData.studenthinttext[j],
                                  lines: 1,
                                  textColor: Colors.black,
                                  textFieldColor: Colors.grey,
                                  borderColor: Colors.black26,
                                  fontSize: 16,
                                  password:
                                      LoginData.citizentitles.length == j + 1
                                          ? true
                                          : false,
                                ).textField()[i],
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Container(
                                padding: EdgeInsets.all(12),
                                alignment: Alignment.center,
                                width: double.maxFinite,
                                child: Text('Sign Up')),
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
      ),
    );
  }
}
