import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:ricmobile/custom/appbar.dart';
import 'package:ricmobile/custom/drawerTest.dart';
import 'package:get/get.dart';
import 'package:ricmobile/helpers/ricfont.dart';
import 'package:ricmobile/pages/upload-files.dart';

import '../custom/button.dart';

class Upload extends StatelessWidget {
  const Upload({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    void pickFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result == null) return;
      PlatformFile file = result.files.single;
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppbar(context: context).appbar(),
        drawer: DrawerTest(
          id: id,
        ),
        drawerScrimColor: Colors.transparent,
        backgroundColor: Color(0xffF4F5F7),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.all(30),
                          height: size.height * 0.45,
                          child: DefaultTextStyle(
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Please follow the below instructions;',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    '-Two files to be uploaded at the same time;'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '-File #1: must be a PDF or MS WORD file with 2 pages.'),
                                      Text('- File #2: Video'),
                                    ],
                                  ),
                                ),
                                Text(
                                    "- The file size should be maximum of 30MB"),
                                Text(
                                    "- Uploaded file must be of type jpeg, png, jpg, mp4, docx, pdf, gif, svg"),
                                Text(
                                    "- In case of a larger video file, please compress the file and re-upload."),
                                Text("- Video Compressor Tool Link"),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () => Get.back(),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 15),
                                    width: size.width * 0.28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffF1556C)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          FlutterFontIcons.arrowleft,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        const Text(
                                          'Back List',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                  width: double.maxFinite,
                                  child: const Text(
                                    'Photo',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: pickFile,
                                child: Container(
                                  height: size.height * 0.2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black12, width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.file_upload_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: size.width * 0.5,
                                          child: const Text(
                                            'Drag and drop a file here or click',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomButton(
                                      text: 'Continue & Save',
                                      primaryColor: Color(0xff19BC9B),
                                      secondaryColor: Color(0xff21AE93),
                                      width: 185,
                                      iconData: FlutterFontIcons.checkall)
                                  .button(),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
