import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/custom/logout.dart';
import 'package:ricmobile/helpers/ricfont.dart';
import 'package:ricmobile/routes/routes.dart';

class CustomAppbar {
  const CustomAppbar({required this.context});
  final BuildContext context;
  AppBar appbar() {
    return AppBar(
      backgroundColor: Color(0xff0E243A),
      actions: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: PopupMenuButton(
              splashRadius: 10,
              offset: Offset(0, kToolbarHeight),
              onSelected: (value) => {
                if (value == '/changepassword') Get.toNamed('/changepassword'),
                if (value == '/logout') CustomLogout(context: context).logout(),
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Center(
                    child: Text(
                      'Welcome vigneshdusa',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: '/changepassword',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Icon(
                          FlutterFontIcons.account,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Change Password',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: '/logout',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Icon(
                          FlutterFontIcons.logout,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                )
              ],
              child: Icon(
                Icons.account_circle_rounded,
                size: 26,
              ),
            )),
      ],
    );
  }
}
