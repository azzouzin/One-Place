import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/appointment.dart';
import 'package:one_place/Views/homepage.dart';

import '../Constants.dart';
import 'signup.dart';

class AboutDoctor extends StatefulWidget {
  AboutDoctor({super.key});

  @override
  State<AboutDoctor> createState() => _AboutDoctortState();
}

enum Pay { hand, card }

class _AboutDoctortState extends State<AboutDoctor> {
  Gender selectedValue = Gender.male;
  Pay selctedpayment = Pay.card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: Get.height * 0.35,
                      ),
                      child: Image.asset(
                        'assets/item2.png',
                        scale: 4.5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: Get.height * 0.35,
                      ),
                      child: Image.asset(
                        'assets/item.png',
                        scale: 4.5,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width * 0.02),
                  child: Text(
                    'Location :  Boussada',
                    style: TextStyle(
                        color: txtclr,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width * 0.05),
                  child: Text(
                    'Age :   41 Years Old',
                    style: TextStyle(
                        color: txtclr,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width * 0.05),
                  child: Text(
                    'Rating :    Good',
                    style: TextStyle(
                        color: txtclr,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width * 0.05),
                  child: Text(
                    'Availabale :    Mon-Tue',
                    style: TextStyle(
                        color: txtclr,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width * 0.1),
                  child: Text(
                    'About :    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
                    style: TextStyle(
                        color: txtclr,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            bottom: Get.size.height * 0.03,
                            right: Get.width * 0.1,
                          ),
                          child: Container(
                            width: Get.width * 0.25,
                            height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: Text(
                                '2000 DA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            bottom: Get.size.height * 0.03,
                          ),
                          child: Container(
                            width: Get.size.width * 0.55,
                            height: Get.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: bleuc,
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Get.to(Appointment());
                                },
                                child: Text(
                                  'Send Requast',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/background.png'),
          Padding(
            padding: EdgeInsets.only(top: Get.size.width * 0.3),
            child: Align(alignment: Alignment.topCenter, child: topContainer()),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.1),
                child: InkWell(
                    onTap: () {
                      Get.to(() => HomePage());
                    },
                    child: ClipOval(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(Get.width * 0.1),
                child: Image.asset(
                  'assets/logo.png',
                  scale: 10,
                ),
              ),
              Text(
                'One Place',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class topContainer extends StatelessWidget {
  const topContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(AboutDoctor());
      },
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.size.width * 0.05),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('assets/r.png'),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.size.width * 0.1, bottom: Get.height * 0.05),
                    child: Image.asset(
                      'assets/docpic0.png',
                      scale: 5,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/gred.png'),
              Padding(
                padding: EdgeInsets.only(
                  bottom: Get.height * 0.12,
                  left: Get.width * 0.2,
                ),
                child: Text(
                  "Dr.Khaled",
                  style: TextStyle(
                      fontSize: Get.width * 0.05, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: Get.height * 0.09,
                  left: Get.width * 0.2,
                ),
                child: Text(
                  "Dentist",
                  style: TextStyle(
                      fontSize: Get.width * 0.03, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: Get.height * 0.06,
                  left: Get.width * 0.2,
                ),
                child: Text(
                  "06 66 66 66 66",
                  style: TextStyle(
                      fontSize: Get.width * 0.03, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )),
    );
  }
}
