import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ricmobile/helpers/ricfont.dart';
import 'package:ricmobile/pages/upload.dart';

import '../custom/button.dart';
import '../custom/drawerTest.dart';
import '../custom/text-field.dart';

class UploadFiles extends StatelessWidget {
  const UploadFiles({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0E243A),
      ),
      drawer: DrawerTest(
        id: id,
      ),
      drawerScrimColor: Colors.transparent,
      body: SingleChildScrollView(
          child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Upload Files',
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
                    InkWell(
                      onTap: () {
                        Get.to(Upload(id: 3));
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff4A81D4)),
                          width: size.width * 0.35,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FlutterFontIcons.plus,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Add New File',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          dataRowMaxHeight: size.height * 0.07,
                          headingTextStyle: TextStyle(color: Colors.white),
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xff0E233A)),
                          dataTextStyle: TextStyle(color: Color(0xff6C757D)),
                          dataRowColor: MaterialStateColor.resolveWith(
                              (states) => Color(0xffF5F6F8)),
                          border: TableBorder.all(
                              width: 1, color: Color(0xffB3B6B7)),
                          columns: [
                            DataColumn(label: Text('ID')),
                            DataColumn(label: Text('Name')),
                            DataColumn(label: Text('Type')),
                            DataColumn(label: Text('Size')),
                            DataColumn(label: Text('Uploaded')),
                            DataColumn(label: Text('Action')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(Text('1')),
                              DataCell(SizedBox(
                                  width: 80,
                                  child: Text(
                                    'testtesttesttesttesttesttest.pdf',
                                    overflow: TextOverflow.ellipsis,
                                  ))),
                              DataCell(Icon(FlutterFontIcons.pdf)),
                              DataCell(Text('96.35 KB')),
                              DataCell(Text('19-06-23 08:35 12 PM')),
                              DataCell(
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Color(0xffF1556C),
                                  ),
                                  width: 100,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Delete',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
