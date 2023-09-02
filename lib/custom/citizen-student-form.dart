import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ricmobile/controller/controller.dart';
import 'package:ricmobile/custom/text-field.dart';
import 'package:ricmobile/data/login.dart';
import 'package:pinput/pinput.dart';
import 'package:ricmobile/pages/citizen-register.dart';

import '../pages/dashboard.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key, required this.title, required this.isCitizen});
  final bool isCitizen;
  final String title;
  static String phone = "", verify = "";
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    Controller controller = Get.put(Controller());
    controller.countryCode.text = "+91";
    var code = "";
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff0E243A)),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
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
                          // if (isCitizen == true)
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Full Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: controller.studentnameController,
                            style: TextStyle(height: 1),
                            decoration: InputDecoration(
                                hintText: 'Enter your name',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26)),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email address',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: controller.studentemailController,
                            style: TextStyle(height: 1),
                            decoration: InputDecoration(
                                hintText: 'Enter your email address',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26)),
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Obx(() {
                            return TextFormField(
                              obscureText: !controller.passwordVisible.value,
                              maxLines: 1,
                              controller: controller.studentpasswordController,
                              style: TextStyle(height: 1),
                              decoration: InputDecoration(
                                  hintText: 'password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black26)),
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
                                            controller.passwordVisible.value ==
                                                    true
                                                ? false
                                                : true;
                                      },
                                    ),
                                  )),
                            );
                          }),
                          // if (isCitizen == false)
                          //   for (int j = 0;
                          //       j < LoginData.studenthinttext.length;
                          //       j++)
                          //     for (int i = 0; i < CustomTextField.length; i++)
                          //       CustomTextField(
                          //         text: LoginData.studenttitles[j],
                          //         hinttext: LoginData.studenthinttext[j],
                          //         lines: 1,
                          //         textColor: Colors.black,
                          //         textFieldColor: Colors.grey,
                          //         borderColor: Colors.black26,
                          //         fontSize: 16,
                          //         password:
                          //             LoginData.citizentitles.length == j + 1
                          //                 ? true
                          //                 : false,
                          //       ).textField()[i],
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Mobile Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLines: 1,
                            controller: controller.studentmobileController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(height: 1),
                            decoration: InputDecoration(
                                hintText: 'Enter your mobile number',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black26)),
                                border: OutlineInputBorder()),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(225, 25, 167, 206)),
                              onPressed: () async {
                                await FirebaseAuth.instance.verifyPhoneNumber(
                                  phoneNumber:
                                      '${controller.countryCode.text + controller.citizenmobileController.text}',
                                  verificationCompleted:
                                      (PhoneAuthCredential credential) {},
                                  verificationFailed:
                                      (FirebaseAuthException e) {},
                                  codeSent: (String verificationId,
                                      int? resendToken) {
                                    CustomForm.verify = verificationId;
                                    CustomForm.phone = controller
                                            .countryCode.text +
                                        " " +
                                        controller.citizenmobileController.text;
                                  },
                                  codeAutoRetrievalTimeout:
                                      (String verificationId) {},
                                );
                                print(CustomForm.verify);
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get OTP',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Icon(Icons.arrow_right_sharp)
                                ],
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Pinput(
                            length: 6,
                            defaultPinTheme: defaultPinTheme,
                            focusedPinTheme: focusedPinTheme,
                            submittedPinTheme: submittedPinTheme,
                            showCursor: true,
                            onCompleted: (pin) => print(pin),
                            onChanged: (value) {
                              code = value;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: 120,
                              height: 60,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    try {
                                      PhoneAuthCredential credential =
                                          PhoneAuthProvider.credential(
                                              verificationId: CustomForm.verify,
                                              smsCode: code);
                                      print(CustomForm.verify);
                                      await auth
                                          .signInWithCredential(credential);
                                      print('success');
                                      Get.to(Dashboard(id: 0));
                                    } catch (e) {
                                      print("wrong phone");
                                    } finally {
                                      FirebaseFirestore.instance
                                          .collection('users')
                                          .add({
                                        'fullname':
                                            '${controller.studentnameController.text}',
                                        'email':
                                            '${controller.studentemailController.text}',
                                        'password':
                                            '${controller.studentpasswordController.text}',
                                        'mobile':
                                            '${controller.studentmobileController.text}',
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(225, 25, 167, 206),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                  child: const Text(
                                    'Confirm',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
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
