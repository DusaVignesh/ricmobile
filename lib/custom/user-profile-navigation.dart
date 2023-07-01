import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class UserProfileNavigation extends StatelessWidget {
  const UserProfileNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Controller controller = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: controller.showmyprofile == 'moreinfo'
              ? Color(0xff0E233A)
              : Color(0xffECEFF1),
          child: InkWell(
            splashColor: Color(0xff0E233A),
            onTap: () {
              Future.delayed(Duration(milliseconds: 180), () {
                controller.showmyprofile.value = 'moreinfo';
              });
            },
            child: SizedBox(
              width: size.width * 0.36,
              height: size.height * 0.045,
              child: Center(
                child: Text(
                  'More Info',
                  style: TextStyle(
                      color: controller.showmyprofile == 'moreinfo'
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          clipBehavior: Clip.hardEdge,
          color: controller.showmyprofile == 'next'
              ? Color(0xff0E233A)
              : Color(0xffECEFF1),
          child: InkWell(
            splashColor: Color(0xff0E233A),
            onTap: () {
              Future.delayed(Duration(milliseconds: 180), () {
                controller.showmyprofile.value = 'next';
              });
            },
            child: SizedBox(
              width: size.width * 0.36,
              height: size.height * 0.045,
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: controller.showmyprofile == 'next'
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
