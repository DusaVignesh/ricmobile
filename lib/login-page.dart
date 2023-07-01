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
                              for (int i = 0; i < CustomTextField.length; i++)
                                CustomTextField(
                                        text: 'Email ID',
                                        hinttext: 'Enter Email ID',
                                        lines: 1,
                                        textColor: Colors.black,
                                        textFieldColor: Colors.grey,
                                        borderColor: Colors.black26,
                                        fontSize: 16)
                                    .textField()[i],
                              for (int i = 0; i < CustomTextField.length; i++)
                                CustomTextField(
                                        text: 'Password',
                                        hinttext: 'password',
                                        lines: 1,
                                        textColor: Colors.black,
                                        textFieldColor: Colors.grey,
                                        borderColor: Colors.black26,
                                        fontSize: 16,
                                        password: true)
                                    .textField()[i],
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.to(Dashboard(id: 0));
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
