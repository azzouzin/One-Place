import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/homepage.dart';
import 'package:one_place/Views/loginpage.dart';
import 'package:one_place/Views/signup.dart';
import 'package:one_place/main.dart';

import '../constants.dart';
import 'select_service.dart';

class ChosePage extends StatefulWidget {
  ChosePage({super.key});

  @override
  State<ChosePage> createState() => _ChosePageState();
}

class _ChosePageState extends State<ChosePage> {
  List<Color> _color = [Colors.white, Colors.white];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Get.size.height * 0.049,
                    left: Get.size.width * 0.2,
                    right: Get.size.width * 0.2),
                child: Text(
                  'Join Our Helthcare Network',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: txtclr,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Get.size.height * 0.02,
                    left: Get.size.width * 0.15,
                    right: Get.size.width * 0.15),
                child: Text(
                  'Register as a Healthcare Profissional or Patient and Discover A World of Care',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 1,
                    color: txtclr,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Get.size.height * 0.04,
                ),
                child: myButton(
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset('assets/provider.svg'),
                        Text(
                          "Professional Healthcare ",
                          style: TextStyle(
                              color: _color[0] == bleuf ? Colors.white : bleuf,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    color: _color[0],
                    height: Get.height * 0.8,
                    onprsd: () {
                      setState(() {
                        _color[0] = _color[0] == bleuf ? Colors.white : bleuf;
                        _color[1] = Colors.white;
                      });
                    },
                    witdh: Get.width),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: Get.size.height * 0.04,
                ),
                child: myButton(
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset('assets/patient.svg'),
                        Text(
                          "Patient",
                          style: TextStyle(
                              color: _color[1] == bleuf ? Colors.white : bleuf,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    color: _color[1],
                    height: Get.height * 0.8,
                    onprsd: () {
                      print("clicked");
                      setState(() {
                        _color[1] = _color[1] == bleuf ? Colors.white : bleuf;
                        _color[0] = Colors.white;
                      });
                    },
                    witdh: Get.width),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Get.size.height * 0.04,
                    bottom: Get.size.height * 0.04),
                child: myButton(
                    center: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    color: bleuf,
                    height: Get.height * 0.2,
                    onprsd: () {
                      _color[1] == bleuf
                          ? Get.to(SelectService())
                          : Get.to(LoginPage());
                    },
                    witdh: Get.width),
              ),
            ],
          ),
        ),
      ),
    );
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
              borderRadius: BorderRadius.circular(20),
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
