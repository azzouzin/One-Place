import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/chose.dart';
import 'package:one_place/Views/signup.dart';

import '../constants.dart';

class CityPage extends StatefulWidget {
  CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  TextEditingController textcntl = TextEditingController();

  List<Color> _color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

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
                padding: EdgeInsets.only(top: Get.size.height * 0.049),
                child: Text(
                  'Select Your City',
                  style: TextStyle(
                    color: txtclr,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.size.height * 0.016),
                child: Text(
                  'Discover Healthcare Services In Your City: Your Getway To Localized Healthcare',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: txtclr,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.size.height * 0.06),
                child: cont(),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.size.height * 0.046),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        myButton(
                            center: Text(
                              "M'Sila",
                              style: TextStyle(
                                  color:
                                      _color[0] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[0],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[0] =
                                    _color[0] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                        SizedBox(
                          height: 20,
                        ),
                        myButton(
                            center: Text(
                              "Aïn El Melh",
                              style: TextStyle(
                                  color:
                                      _color[1] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[1],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[1] =
                                    _color[1] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                        SizedBox(
                          height: 20,
                        ),
                        myButton(
                            center: Text(
                              "Bou Saâda",
                              style: TextStyle(
                                  color:
                                      _color[2] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[2],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[2] =
                                    _color[2] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        myButton(
                            center: Text(
                              "Aïn Errich",
                              style: TextStyle(
                                  color:
                                      _color[3] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[3],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[3] =
                                    _color[3] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                        SizedBox(
                          height: 20,
                        ),
                        myButton(
                            center: Text(
                              "Ben Srour",
                              style: TextStyle(
                                  color:
                                      _color[4] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[4],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[4] =
                                    _color[4] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                        SizedBox(
                          height: 20,
                        ),
                        myButton(
                            center: Text(
                              "Belaiba",
                              style: TextStyle(
                                  color:
                                      _color[5] == bleuf ? Colors.white : bleuf,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            color: _color[5],
                            height: Get.height * 0.8,
                            onprsd: () {
                              print("clicked");
                              setState(() {
                                _color[5] =
                                    _color[5] == bleuf ? Colors.white : bleuf;
                              });
                            },
                            witdh: Get.width / 3),
                      ],
                    ),
                  ],
                ),
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
                    height: Get.height,
                    onprsd: () {
                      Get.to(SignupPage());
                    },
                    witdh: Get.width),
              ),
            ],
          ),
        ),
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
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, Get.size.height * 0.009),
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5)
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                hint == 'Password' ? Icons.lock : Icons.search,
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

  Widget cont() {
    return SizedBox(
      height: Get.height * 0.45,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SvgPicture.asset('assets/city.svg'),
          myTextField(
              witdh: Get.width,
              height: Get.height,
              editingController: textcntl,
              hint: "Search"),
        ],
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
