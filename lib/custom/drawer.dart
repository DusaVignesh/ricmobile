import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool boolselect = false;
    return Transform.translate(
      offset: Offset(0, 107),
      child: Drawer(
        width: size.width * 0.6,
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          children: [
            Padding(
                padding: EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  'navigation'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500),
                )),
            ListTile(
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black),
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
            ),
            Material(
              type: MaterialType.transparency,
              child: ListTile(
                hoverColor: Colors.purple,
                onTap: () => Navigator.pushNamed(context, "login-page"),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
                leading: Icon(Icons.person),
                title: Text('My Profile'),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () => {},
                splashColor: Colors.blue,
                child: ListTile(
                  selected: boolselect,
                  titleTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                  leading: Icon(Icons.pageview),
                  title: Text('eCertificate'),
                ),
              ),
            ),
            Material(
              type: MaterialType.transparency,
              child: ListTile(
                hoverColor: Colors.purple,
                // titleTextStyle: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 14,
                //     color: Colors.black),
                leading: Icon(Icons.upload_file),
                title: Text('Upload Files'),
              ),
            ),
            ListTile(
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black),
              leading: Icon(Icons.password),
              title: Text('Change password'),
            ),
          ],
        ),
      ),
    );
  }
}
