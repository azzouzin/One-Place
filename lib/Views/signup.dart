import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:one_place/constants.dart';

import 'documentspage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPagetate createState() => _SignupPagetate();
}

enum Gender { male, female }

class _SignupPagetate extends State<SignupPage> {
  final _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  bool _isLoading = false;
  String wilaya = 'Setif';
  bool isDropDownOpen = false;
  TextEditingController nameController1 = TextEditingController();
  TextEditingController surnameController2 = TextEditingController();
  TextEditingController emailController3 = TextEditingController();
  TextEditingController wilayaController4 = TextEditingController();
  TextEditingController passwordController5 = TextEditingController();

  Gender selectedValue = Gender.male;
  DateTime selectedDate = DateTime.now();
  void _handleNextPage() async {
    print(_currentPage);
    setState(() {
      _isLoading = true;
    });
    // Do sign-up process here
    Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
      Get.to(Documentpage());
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenwitdh = Get.size.width;
    double screenheight = Get.size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                width: screenwitdh,
                height: screenheight,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenheight * 0.06,
                            bottom: screenheight * 0.05),
                        child: Text(
                          'Creat Account',
                          style: TextStyle(
                              letterSpacing: 2,
                              color: txtclr,
                              fontSize: screenwitdh * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10, right: Get.size.width * 0.5),
                        child: Text(
                          "First Name",
                          style: TextStyle(
                              color: txtclr, fontSize: Get.width * 0.04),
                        ),
                      ),
                      MyTextField(
                        screenheight * 0.048596112311,
                        screenwitdh * 0.785219399538,
                        nameController1,
                        'First name',
                      ),
                      SizedBox(
                        height: screenheight * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 7, right: Get.size.width * 0.5),
                        child: Text(
                          "Last Name ",
                          style: TextStyle(
                              color: txtclr, fontSize: Get.width * 0.04),
                        ),
                      ),
                      MyTextField(
                        screenheight * 0.048596112311,
                        screenwitdh * 0.785219399538,
                        surnameController2,
                        'Last name',
                      ),
                      SizedBox(
                        height: screenheight * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10, right: Get.size.width * 0.5),
                        child: Text(
                          "Password     ",
                          style: TextStyle(
                              color: txtclr, fontSize: Get.width * 0.04),
                        ),
                      ),
                      MyTextField(
                        screenheight * 0.048596112311,
                        screenwitdh * 0.785219399538,
                        passwordController5,
                        'Password',
                      ),
                      SizedBox(
                        height: screenheight * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10, right: Get.size.width * 0.5),
                        child: Text(
                          "   Phone Number",
                          style: TextStyle(
                              color: txtclr, fontSize: Get.width * 0.04),
                        ),
                      ),
                      MyTextField(
                        screenheight * 0.048596112311,
                        screenwitdh * 0.785219399538,
                        emailController3,
                        'Phone Number',
                      ),
                      SizedBox(
                        height: screenheight * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 10, right: Get.size.width * 0.5),
                        child: Text(
                          "Birth Date       ",
                          style: TextStyle(
                              color: txtclr, fontSize: Get.width * 0.04),
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100),
                          ).then((value) {
                            setState(() {
                              selectedDate = value!;
                              print(selectedDate.toString());
                            });
                          });
                        }),
                        child: Container(
                          width: screenwitdh * 0.785219399538,
                          height: screenheight * 0.048596112311,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 10),
                              ]),
                          child: Center(
                              child: Text(
                            selectedDate == null
                                ? 'Date of  Birth'
                                : DateFormat.yMd()
                                    .format(selectedDate)
                                    .toString(),
                            style: TextStyle(color: Colors.grey),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenwitdh * 0.07,
                            bottom: screenheight * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenwitdh * 0.04,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: screenwitdh * 0.32,
                              child: ListTileTheme(
                                horizontalTitleGap: 0.0,
                                child: RadioListTile(
                                  title: Text(
                                    'Female',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenwitdh * 0.04,
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
                              width: screenwitdh * 0.3,
                              child: ListTileTheme(
                                horizontalTitleGap: 0.0,
                                child: RadioListTile(
                                  title: Text(
                                    'Male',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenwitdh * 0.04,
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
                    ],
                  ),
                )),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  width: screenwitdh,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: _handleNextPage,
                        child: Container(
                            width: screenwitdh * 0.8,
                            height: screenheight * 0.05,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 20),
                                ],
                                color: bleuf,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: screenwitdh * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget MyTextField(double height, double witdh,
      TextEditingController editingController, String hint) {
    return Container(
        width: witdh,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5),
            ]),
        child: TextField(
          obscureText: hint == 'Password' ? true : false,
          controller: editingController,
          cursorHeight: height / 2,
          decoration: InputDecoration(
            suffixIcon: hint == 'Phone Number' ? Icon(Icons.phone) : null,
            contentPadding: EdgeInsets.symmetric(
                horizontal: witdh * 0.05, vertical: height * 0.2),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: bleuf,
                width: 0.5,
              ),
            ),
          ),
        ));
  }
}
