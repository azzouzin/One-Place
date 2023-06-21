import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/homepage.dart';
import 'package:one_place/main.dart';

import '../Constants.dart';
import 'signup.dart';

class Appointment extends StatefulWidget {
  Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

enum Pay { hand, card }

class _AppointmentState extends State<Appointment> {
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
                Padding(
                    padding: EdgeInsets.only(
                        left: Get.size.width * 0.05,
                        right: Get.size.width * 0.050,
                        top: Get.size.height * 0.32),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Full Name',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Age',
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.size.width * 0.05,
                      right: Get.size.width * 0.050,
                      top: Get.size.height * 0.05),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Get.size.width * 0.03,
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Image.asset('assets/algeria.png'),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0.5)),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: Get.size.width * 0.03,
                                    top: Get.size.width * 0.04),
                                child: Text(
                                  "+213",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.07, bottom: Get.size.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: Get.width * 0.04,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: Get.width * 0.32,
                        child: ListTileTheme(
                          horizontalTitleGap: 0.0,
                          child: RadioListTile(
                            title: Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.width * 0.04,
                                  fontWeight: FontWeight.w300),
                            ),
                            value: Gender.female,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.3,
                        child: ListTileTheme(
                          horizontalTitleGap: 0.0,
                          child: RadioListTile(
                            title: Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.width * 0.04,
                                  fontWeight: FontWeight.w300),
                            ),
                            value: Gender.male,
                            groupValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Container(
                    width: Get.width * 0.8,
                    height: Get.height * 0.0581888653982,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * 0.747663551402 * 0.15,
                          height: Get.height * 0.0581888653982,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            color: bleuc,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10)),
                        )),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: Get.size.height * 0.03, top: Get.height * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: Get.height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 207, 207, 207))),
                        width: Get.width * 0.78,
                        child: ListTileTheme(
                          horizontalTitleGap: 10,
                          child: RadioListTile(
                            secondary: SizedBox(
                                width: Get.width * 0.08,
                                child: Image.asset('assets/icon.png')),
                            title: Text(
                              'Hand-To-Hand',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Get.width * 0.04,
                                  fontWeight: FontWeight.w300),
                            ),
                            value: Pay.card,
                            groupValue: selctedpayment,
                            onChanged: (value) {
                              setState(() {
                                selctedpayment = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: Get.size.height * 0.03,
                            top: Get.height * 0.05),
                        child: Container(
                          height: Get.height * 0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 207, 207, 207))),
                          width: Get.width * 0.78,
                          child: ListTileTheme(
                            horizontalTitleGap: 10,
                            child: RadioListTile(
                              secondary: SizedBox(
                                  width: Get.width * 0.1,
                                  child: Image.asset('assets/card.png')),
                              title: Text(
                                'El Dhahabia',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Get.width * 0.04,
                                    fontWeight: FontWeight.w300),
                              ),
                              value: Pay.hand,
                              groupValue: selctedpayment,
                              onChanged: (value) {
                                setState(() {
                                  selctedpayment = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: Get.size.height * 0.03,
                        right: Get.width * 0.1,
                        left: Get.width * 0.1),
                    child: InkWell(
                      onTap: () {
                        Get.to(HomePage());
                      },
                      child: Container(
                        width: double.infinity,
                        height: Get.height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bleuc,
                        ),
                        child: Center(
                          child: Text(
                            'Send Requast',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Image.asset('assets/background.png'),
          Padding(
            padding: EdgeInsets.only(top: Get.size.width * 0.3),
            child: Align(
              alignment: Alignment.topCenter,
              child: const Text(
                'Make Appointement',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
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
          )
        ],
      ),
    );
  }
}
