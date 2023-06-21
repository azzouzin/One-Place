import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:one_place/constants.dart';

import 'Compenents/bottom_navigation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.23),
                  child: Text(
                    "Congratulation You Are Now One Of The Family",
                    style: TextStyle(color: txtclr, fontSize: Get.width * 0.05),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.05),
                  child: Text(
                    " Creating Your Professional Identity Craft An Irresistible Doctor Profile To Connect With Patients",
                    style: TextStyle(color: txtclr, fontSize: Get.width * 0.05),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.05),
                  child: Text(
                    "Profile Setting Select Setting Icon To Setup/Update Your Profile",
                    style: TextStyle(color: txtclr, fontSize: Get.width * 0.05),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.0),
                  child: Image.asset('assets/p2.png'),
                ),
              ],
            ),
          ),
          Image.asset('assets/background.png'),
          Padding(
            padding: EdgeInsets.only(top: Get.size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: Get.size.width * 0.3,
                    height: Get.size.width * 0.3,
                    child: Image.asset(
                      'assets/profilepic.png',
                      fit: BoxFit.fitHeight,
                    )),
                Padding(
                  padding: EdgeInsets.only(right: Get.size.width * 0.15),
                  child: const Text(
                    'Welcom Dr.Khaled',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
