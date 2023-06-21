import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/Compenents/bottom_navigation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                      top: Get.size.height * 0.21),
                  child: Image.asset('assets/Scroll.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.0),
                  child: Image.asset('assets/Scroll.png'),
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
                  child: Text(
                    'Welcom Dr.Khaled',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(),
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
