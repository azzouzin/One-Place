import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/city_page.dart';
import 'package:one_place/Views/homepage.dart';
import 'package:one_place/Views/profile_page.dart';
import 'package:one_place/Views/signup.dart';
import 'package:one_place/constants.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: Get.size.height * 0.001, bottom: Get.height * 0.2),
            child: SizedBox(
                width: Get.width,
                height: Get.height * 0.5,
                child: Image.asset('assets/login.png')),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: SvgPicture.asset(
                'assets/cyanbg.svg',
                fit: BoxFit.fill,
              ),
              height: Get.height * 0.6,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Get.height * 0.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.height * 0.05),
                    child: myTextField(
                        witdh: Get.width,
                        height: Get.height,
                        editingController: emailController,
                        hint: "Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.height * 0.05),
                    child: myTextField(
                        witdh: Get.width,
                        height: Get.height,
                        editingController: emailController,
                        hint: "Password"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.height * 0.05),
                    child: myButton(
                        center: Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        color: bleuf,
                        height: Get.height,
                        onprsd: () {
                          Get.to(HomePage());
                        },
                        witdh: Get.width),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.size.width * 0.2,
                        right: Get.size.width * 0.2,
                        bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipOval(
                            child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/ff.svg'),
                        )),
                        ClipOval(
                            child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/gg.svg'),
                        )),
                        ClipOval(
                            child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/app.svg'),
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      onTap: () {
                        Get.to(CityPage());
                      },
                      child: Text(
                        "Don't Have Account?  Sing Up",
                        style: TextStyle(
                            color: txtclr, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget myTextField({
    required double height,
    required double witdh,
    required TextEditingController editingController,
    required String hint,
  }) {
    return Container(
        width: witdh * 0.8,
        height: height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                hint == 'Password' ? Icons.lock : Icons.person_sharp,
                color: iconclr,
              ),
            ),
            Expanded(
              child: TextField(
                controller: editingController,
                obscureText: hint == 'Password' ? true : false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: hint,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
              ),
            ),
          ],
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
          height: height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
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
