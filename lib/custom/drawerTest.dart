import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ricmobile/custom/logout.dart';
import 'package:ricmobile/data/drawer-items.dart';
import 'package:get/get.dart';
import 'package:ricmobile/routes/routes.dart';

class DrawerTest extends StatefulWidget {
  const DrawerTest({super.key, required this.id});
  final int id;
  @override
  State<DrawerTest> createState() => DrawerTestState();
}

class DrawerTestState extends State<DrawerTest> {
  DrawerItems items = Get.find();
  @override
  Widget build(BuildContext context) {
    items.selectedItem[widget.id] = true;
    final size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: const Offset(0, 109),
      child: Drawer(
        width: size.width * 0.6,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 20, 0, 10),
              width: double.maxFinite,
              child: Text(
                'navigator'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 0),
                itemCount: items.titles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (items.titles[index] == 'Logout') {
                        Navigator.pop(context);
                        CustomLogout(context: context).logout();
                      } else {
                        Future.delayed(const Duration(milliseconds: 180), () {
                          items.selectedItem[widget.id] = false;
                          Navigator.pop(context);
                          Get.toNamed(RoutesClass.navigation[index]);
                        });
                      }
                    },
                    splashColor: Colors.blue,
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                      selected: items.selectedItem[index],
                      selectedColor: const Color(0xff2FB1C6),
                      leading: Icon(items.leadingIcons[index]),
                      title: Text(items.titles[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
