import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom/citizen-student-form.dart';
import '../custom/text-field.dart';

class StudentRegister extends StatelessWidget {
  const StudentRegister({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0E243A),
        body: CustomForm(
          title: 'Student registration form',
          isCitizen: false,
        ));
  }
}
