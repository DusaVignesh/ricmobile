import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/pages/citizen-register.dart';
import 'package:ricmobile/pages/dashboard.dart';
import 'package:ricmobile/pages/forgot-password.dart';
import 'package:ricmobile/pages/student-register.dart';
import 'controller/controller.dart';
import 'custom/text-field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  final _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    Controller controller = Controller();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0E243A),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width - 20,
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
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: size.width / 2,
                                  child: Text(
                                    'Enter your email address and password.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        color: Colors.grey),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Email ID',
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
                                controller: controller.email,
                                style: TextStyle(height: 1),
                                decoration: InputDecoration(
                                    hintText: 'Enter Email ID',
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
                                  obscureText:
                                      !controller.passwordVisible.value,
                                  maxLines: 1,
                                  controller: controller.password,
                                  style: TextStyle(height: 1),
                                  decoration: InputDecoration(
                                      hintText: 'password',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black26)),
                                      border: OutlineInputBorder(),
                                      suffixIcon: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                                controller.passwordVisible
                                                            .value ==
                                                        true
                                                    ? false
                                                    : true;
                                          },
                                        ),
                                      )),
                                );
                              }),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  try {
                                    QuerySnapshot<Map<String, dynamic>>
                                        usersRef = await FirebaseFirestore
                                            .instance
                                            .collection('users')
                                            .where('email',
                                                isEqualTo:
                                                    controller.email.text)
                                            .get();
                                    if (usersRef.docs.isNotEmpty) {
                                      if (usersRef.docs[0]['password'] ==
                                          controller.password.text) {
                                        Get.to(Dashboard(id: 0));
                                      } else {
                                        print('password problem');
                                        Get.to(LoginPage());
                                      }
                                    } else {
                                      Get.to(LoginPage());
                                    }

                                    // if (userDoc.docs.isNotEmpty) {
                                    //   if (controller.password.text ==
                                    //       userDoc.docs[0]['password']) {
                                    //     // The email and password match.
                                    //     print('The user is authenticated.');
                                    //   } else {
                                    //     // The email and password do not match.
                                    //     print('The user is not authenticated.');
                                    //   }
                                    // } else {
                                    //   // The user does not exist.
                                    //   print('The user does not exist.');
                                    // }
                                  } catch (e) {
                                    print(e);
                                  }
                                },
                                child: Container(
                                    padding: EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    width: double.maxFinite,
                                    child: Text('Log In')),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff0E243A),
                                    textStyle: TextStyle(fontSize: 16)),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    Get.to(ForgotPassword());
                                  },
                                  child: const Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'If you are a student - ',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(StudentRegister());
                                },
                                child: Text(
                                  'Sign up Here',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'If you are a citizen - ',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(CitizenRegister());
                                },
                                child: Text(
                                  'Sign up Here',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          )
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
