import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/loginpage.dart';

import '../constants.dart';
import 'homepage.dart';

class Documentpage extends StatefulWidget {
  const Documentpage({super.key});

  @override
  State<Documentpage> createState() => _DocumentpageState();
}

class _DocumentpageState extends State<Documentpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.1),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Get.size.height * 0.06,
                      bottom: Get.size.height * 0.06),
                  child: Center(
                    child: Text(
                      'Creat Account',
                      style: TextStyle(
                          letterSpacing: 2,
                          color: txtclr,
                          fontSize: Get.size.width * 0.06,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    FilePickerResult? result;
                    try {
                      result = await FilePicker.platform.pickFiles();
                    } catch (e) {
                      print(e);
                    }

                    if (result != null) {
                      String filePath = result.files.single.path!;
                      // Use the selected file path as needed
                    } else {
                      // User canceled the file picking operation
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        width: Get.width * 0.15,
                        height: Get.width * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]),
                        child: Center(
                            child: SvgPicture.asset('assets/approved.svg')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Upload Experiance CV",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: Get.width * 0.045),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    FilePickerResult? result;
                    try {
                      result = await FilePicker.platform.pickFiles();
                    } catch (e) {
                      print(e);
                    }

                    if (result != null) {
                      String filePath = result.files.single.path!;
                      // Use the selected file path as needed
                    } else {
                      // User canceled the file picking operation
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        width: Get.width * 0.15,
                        height: Get.width * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 5)
                            ]),
                        child: Center(
                            child: SvgPicture.asset('assets/certificate.svg')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Upload Certificate",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: Get.width * 0.045),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.size.height * 0.1,
                ),
                Text(
                  'Description',
                  style: TextStyle(color: txtclr, fontSize: Get.width * 0.04),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(10),
                  width: Get.width * 0.8,
                  height: Get.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Enter text...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: Get.size.height * 0.04,
                      bottom: Get.size.height * 0.04),
                  child: myButton(
                      center: Text(
                        'Finish',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      color: bleuf,
                      height: Get.height * 0.2,
                      onprsd: () {
                        Get.to(LoginPage());
                      },
                      witdh: Get.width),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget myButton(
      {required double height,
      required double witdh,
      required Function onprsd,
      required Color color,
      required Widget center}) {
    return InkWell(
      onTap: () {
        onprsd();
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: witdh * 0.8,
          height: height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 10),
              ]),
          child: Center(child: center)),
    );
  }
}
