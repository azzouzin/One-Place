import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/homepage.dart';

import '../Constants.dart';
import 'signup.dart';

class SelectService extends StatefulWidget {
  SelectService({super.key});

  @override
  State<SelectService> createState() => _SelectServicetState();
}

enum Pay { hand, card }

class _SelectServicetState extends State<SelectService> {
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
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
                "Services",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: Get.size.height * 0.3,
                  left: Get.size.width * 0.1,
                  right: Get.size.width * 0.1,
                ),
                child: Container(
                  height: Get.height * 0.06,
                  child: TextField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < options.length; i++) {
                              if (i != index) {
                                colors[i] = Colors.white;
                              }
                            }
                            colors[index] = bleuc;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.1,
                              vertical: Get.height * 0.01),
                          child: Container(
                            height: Get.height * 0.06,
                            width: Get.width * 0.5,
                            decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                options[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: colors[index] == bleuc
                                        ? Colors.white
                                        : bleuf),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.1, vertical: Get.height * 0.01),
                child: InkWell(
                  onTap: () {
                    Get.to(HomePage());
                  },
                  child: Container(
                    height: Get.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bleuf,
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
