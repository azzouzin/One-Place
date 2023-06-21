import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/Compenents/bottom_navigation.dart';
import 'package:one_place/constants.dart';
import 'signup.dart';

class OrderPage extends StatefulWidget {
  OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

enum Pay { hand, card }

class _OrderPageState extends State<OrderPage> {
  Gender selectedValue = Gender.male;
  Pay selctedpayment = Pay.card;
  List<String> options = [
    "Doctors",
    "Nurses",
    'nutrition',
    'fitness',
    'the elderly',
    'baybysitters',
    'therapist',
    'speech therapist',
    'medications'
  ];

  List<Color> colors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.25),
                child: Text('Wait Response'),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.01),
                child: docitem('assets/docpic0.png', 'Dr.Merouani'),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.03),
                child: Text('Confirmed'),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.01),
                child: docitem('assets/docpic1.jpg', 'Dr.Fellahi'),
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.03),
                child: docitem('assets/docpic6.jpg', 'Dr.Mesoudi'),
              )
            ],
          ),
          Image.asset('assets/background.png'),
          Row(
            children: [
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
          ),
          Padding(
              padding: EdgeInsets.only(top: Get.height * 0.15),
              child: Text(
                "Orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }

  Widget docitem(String url, String name) {
    return Container(
      width: Get.width * 0.8,
      height: Get.height * 0.17,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(right: Get.width * 0.4),
            child: Image.asset(
              url,
              scale: 4.5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Get.width * 0.12, bottom: Get.height * 0.12),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Get.width * 0.15, bottom: Get.height * 0.07),
            child: Text(
              "Mon | 8:00 - 9:00",
              style: TextStyle(
                  color: txtclr, fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.35,
                  right: Get.width * 0.2,
                  bottom: Get.height * 0.01),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.price_check_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      "2000 da",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.65, bottom: Get.height * 0.01),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
