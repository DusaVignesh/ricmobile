import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/custom/button.dart';
import 'package:ricmobile/custom/profile-detail.dart';
import 'package:ricmobile/custom/text-field.dart';
import 'package:ricmobile/custom/user-profile-navigation.dart';
import 'package:ricmobile/helpers/ricfont.dart';

import '../controller/controller.dart';
import '../custom/appbar.dart';
import '../custom/drawerTest.dart';
import '../data/profile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    Profile profile = Get.find();
    Controller controller = Get.find();
    final bool condition = true;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  'About Me',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Column(
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              size: 80,
                              color: Color(0xffC1C7D0),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'vigneshdusa',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'vigneshdusa6113@gmail.com',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Student',
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffF1556C)),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 2),
                                child: Text(
                                  'Change Password',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        )),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Text(
                              'Full Name:',
                              style: TextStyle(
                                color: Color(0xff98A6AD),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'vigneshdusa',
                              style: TextStyle(color: Color(0xff98A6AD)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Mobile:',
                              style: TextStyle(
                                color: Color(0xff98A6AD),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '9490099860',
                              style: TextStyle(color: Color(0xff98A6AD)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Email:',
                              style: TextStyle(
                                color: Color(0xff98A6AD),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'vigneshdusa6113@gmail.com',
                              style: TextStyle(color: Color(0xff98A6AD)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Location:',
                              style: TextStyle(
                                color: Color(0xff98A6AD),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: size.width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 3),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    FlutterFontIcons.facebook,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffF1556C), width: 3),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    FlutterFontIcons.google,
                                    size: 18,
                                    color: Color(0xffF1556C),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff4FC5E1), width: 3),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    FlutterFontIcons.twitter,
                                    size: 18,
                                    color: Color(0xff4FC5E1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff6C757D), width: 3),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    FlutterFontIcons.github,
                                    size: 18,
                                    color: Color(0xff6C757D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Obx(
                  () {
                    return Card(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                        child: controller.showmyprofile == 'moreinfo'
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UserProfileNavigation(),
                                  for (int i = 0; i < 2; i++)
                                    ProfileDetail(
                                            text: 'Personal info',
                                            iconData: FlutterFontIcons.account)
                                        .detail()[i],
                                  for (int j = 0;
                                      j < profile.personaltitles.length;
                                      j++)
                                    for (int i = 0;
                                        i < CustomTextField.length;
                                        i++)
                                      CustomTextField(
                                        lines: 1,
                                        text: profile.personaltitles[j],
                                        hinttext: profile.personalhinttext[j],
                                      ).textField()[i],
                                  for (int i = 0; i < 2; i++)
                                    ProfileDetail(
                                            text: 'school / institution info',
                                            iconData: FlutterFontIcons.building)
                                        .detail()[i],
                                  for (int j = 0;
                                      j < profile.schooltitles.length;
                                      j++)
                                    for (int i = 0;
                                        i < CustomTextField.length;
                                        i++)
                                      CustomTextField(
                                        lines: 1,
                                        text: profile.schooltitles[j],
                                        hinttext: profile.schoolhinttext[j],
                                      ).textField()[i],
                                  for (int i = 0; i < 2; i++)
                                    ProfileDetail(
                                            text: 'info',
                                            iconData: FlutterFontIcons.earth)
                                        .detail()[i],
                                  for (int j = 0;
                                      j < profile.infotitles.length;
                                      j++)
                                    for (int i = 0;
                                        i < CustomTextField.length;
                                        i++)
                                      CustomTextField(
                                        lines: 1,
                                        text: profile.infotitles[j],
                                        hinttext: profile.infohinttext[j],
                                      ).textField()[i],
                                  for (int i = 0;
                                      i < CustomTextField.length;
                                      i++)
                                    CustomTextField(
                                      lines: 4,
                                      text:
                                          'How did you come to know about RIC?',
                                      hinttext: 'Enter about RIC',
                                      textColor: Color(0xff6C757D),
                                    ).textField()[i],
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UserProfileNavigation(),
                                  for (int j = 0;
                                      j < profile.nexttitles.length;
                                      j++)
                                    for (int i = 0;
                                        i < CustomTextField.length;
                                        i++)
                                      CustomTextField(
                                        lines: j < 2 ? 1 : 4,
                                        text: profile.nexttitles[j],
                                        hinttext: profile.nexthinttext[j],
                                      ).textField()[i],
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomButton(
                                          text: 'Continue & Save',
                                          primaryColor: Color(0xff19BC9B),
                                          secondaryColor: Color(0xff21AE93),
                                          width: 185,
                                          iconData:
                                              FlutterFontIcons.contentsave)
                                      .button(),
                                ],
                              ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
