import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_place/Views/orderspage.dart';
import 'package:one_place/Views/settings.dart';
import '../../Constants.dart';
import '../../Controllers/buttom_navigation_C.dart';
import '../../main.dart';
import '../homepage.dart';
import '../profile_page.dart';
import 'bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        //the main background of the navigation bar
        Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffF2FAFD),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.22),
                blurRadius: 22,
              )
            ],
          ),
        ),

        //the navigation Bar Items
        Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    bottomNavigationController.changecolor(0);
                    Get.to(HomePage());
                  },
                  child: NavigationBarItem(
                    backgroundColor: bottomNavigationController.colors[0],
                    icon: InkWell(
                      onTap: () {
                        bottomNavigationController.changecolor(0);
                        Get.to(HomePage());
                      },
                      child: Icon(
                        Icons.home_outlined,
                        color:
                            bottomNavigationController.colors[0] == Colors.blue
                                ? Colors.white
                                : Colors.blue,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    bottomNavigationController.changecolor(1);
                  },
                  child: NavigationBarItem(
                    backgroundColor: bottomNavigationController.colors[1],
                    icon: InkWell(
                      onTap: () {
                        bottomNavigationController.changecolor(1);
                        Get.to(OrderPage());
                      },
                      child: Icon(
                        Icons.cases_outlined,
                        color:
                            bottomNavigationController.colors[1] == Colors.blue
                                ? Colors.white
                                : Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                        width: Get.width * 0.125,
                        height: Get.width * 0.125,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png')),
                        ))),
                InkWell(
                  onTap: () {
                    bottomNavigationController.changecolor(2);
                    Get.to(SettingsPage());
                  },
                  child: NavigationBarItem(
                    backgroundColor: bottomNavigationController.colors[2],
                    icon: InkWell(
                      onTap: () {
                        bottomNavigationController.changecolor(2);
                        Get.to(SettingsPage());
                      },
                      child: Icon(
                        Icons.settings,
                        color:
                            bottomNavigationController.colors[2] == Colors.blue
                                ? Colors.white
                                : Colors.blue,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    bottomNavigationController.changecolor(3);
                    Get.to(ProfilePage());
                  },
                  child: NavigationBarItem(
                    backgroundColor: bottomNavigationController.colors[3],
                    icon: InkWell(
                      onTap: () {
                        bottomNavigationController.changecolor(3);
                        Get.to(ProfilePage());
                      },
                      child: Icon(
                        Icons.person_outline_outlined,
                        color:
                            bottomNavigationController.colors[3] == Colors.blue
                                ? Colors.white
                                : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        )
      ],
    );
  }
}
