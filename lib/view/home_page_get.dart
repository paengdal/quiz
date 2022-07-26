import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:get/get.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/controller/home_page_controller.dart';
import 'package:quiz_first/view/screens/feed_screen.dart';
import 'package:quiz_first/view/screens/feed/quiz_detail_screen.dart';

import 'package:get/get.dart';

class HomePageGet extends StatelessWidget {
  HomePageGet({Key? key}) : super(key: key);

  final _homePageController = Get.put(HomePageController());
  static List<Widget> _screens = [
    // 왜 코딩파파는 static을 선언하는가? 안 해도 작동하는데...
    FeedScreen(),
    Container(
      color: Colors.accents[0],
    ),
    Container(
      color: Colors.accents[1],
    ),
    Container(
      color: Colors.accents[2],
    ),
    Container(
      color: Colors.accents[3],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetX<HomePageController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: _screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              controller.selectedIndex.value = index;
            },
            currentIndex: controller.selectedIndex.value,
            unselectedItemColor: Colors.grey[400],
            selectedItemColor: Colors.teal,
            selectedFontSize: 12,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: (controller.selectedIndex.value == 0)
                      ? Icon(CupertinoIcons.folder_fill)
                      : Icon(CupertinoIcons.folder),
                  label: 'G꾸러미'),
              BottomNavigationBarItem(
                  icon: (controller.selectedIndex.value == 1)
                      ? Icon(CupertinoIcons.folder_fill)
                      : Icon(CupertinoIcons.folder),
                  label: '투데이'),
              BottomNavigationBarItem(
                  icon: (controller.selectedIndex.value == 2)
                      ? Icon(CupertinoIcons.folder_fill)
                      : Icon(CupertinoIcons.folder),
                  label: '투데이'),
              BottomNavigationBarItem(
                  icon: (controller.selectedIndex.value == 3)
                      ? Icon(CupertinoIcons.folder_fill)
                      : Icon(CupertinoIcons.folder),
                  label: '투데이'),
              BottomNavigationBarItem(
                  icon: (controller.selectedIndex.value == 4)
                      ? Icon(CupertinoIcons.person_circle_fill)
                      : Icon(CupertinoIcons.person_circle),
                  label: '내정보'),
            ],
          ),
        );
      },
    );
  }
}
