import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_place/Views/about%20doctor%20page.dart';
import 'package:one_place/Views/chose.dart';
import 'package:one_place/Views/loginpage.dart';
import 'package:one_place/constants.dart';

import 'Views/appointment.dart';
import 'Views/homepage.dart';
import 'Views/orderspage.dart';
import 'Views/select_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "nuovavolte",
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

  final List<Widget> _onboardingScreens = [
    Container(
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.size.height * 0.05),
                    child: SizedBox(
                        width: Get.width * 0.83,
                        child: Image.asset('assets/s1.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Get.height * 0.04,
                    ),
                    child: const Text(
                      'ONE PLACE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(Get.size.width * 0.02),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: const Text(
                            'The First Healthcare App In Algeria',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Get.size.width * 0.02),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.size.height * 0.07),
                    child: SizedBox(
                        width: Get.width * 0.83,
                        child: Image.asset('assets/s2.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Get.height * 0.08,
                    ),
                    child: const Text(
                      'NEW IDEA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(Get.size.width * 0.02),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: const Text(
                            'Transforming Healthcare : Welcome To The Future Of Wellness',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Get.size.width * 0.02),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.size.height * 0.07),
                    child: SizedBox(
                        width: Get.width * 0.83,
                        child: Image.asset('assets/s3.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Get.height * 0.08,
                    ),
                    child: const Text(
                      'SERVICES',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(Get.size.width * 0.02),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: const Text(
                            'Comprehensive Care At Your Fingertips : Unlock A World Of Health Services With Our App',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Get.size.width * 0.02),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.size.height * 0.03),
                    child: SizedBox(
                        width: Get.width * 0.83,
                        child: Image.asset('assets/s4.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Get.height * 0.08,
                    ),
                    child: const Text(
                      "Let's Go",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(Get.size.width * 0.02),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: Get.width * 0.7,
                          child: const Text(
                            'Empowering Your Health :The Ultimate Healthcare App Experience',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Get.size.width * 0.02),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPageIndex < _onboardingScreens.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    if (_currentPageIndex >= _onboardingScreens.length - 1) {
      Get.to(ChosePage(),
          transition: Transition.leftToRight,
          duration: Duration(milliseconds: 300));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: Get.size.width,
            height: Get.size.height * 0.55,
            child: SvgPicture.asset(
              'assets/bg.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int pageIndex) {
                  setState(() {
                    _currentPageIndex = pageIndex;
                  });
                },
                children: _onboardingScreens,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Get.size.height * 0.1),
              child: InkWell(
                onTap: _nextPage,
                child: Center(
                  child: Container(
                    width: Get.size.width * 0.82,
                    height: Get.size.height * 0.07,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: bleuc,
                            fontSize: Get.width * 0.07,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
