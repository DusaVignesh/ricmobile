import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/custom/citizen-student-form.dart';

import '../custom/text-field.dart';

class CitizenRegister extends StatelessWidget {
  const CitizenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0E243A),
        body: CustomForm(
          title: 'Citizens registration form',
          isCitizen: true,
        ));
  }
}
