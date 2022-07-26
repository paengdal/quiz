import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:get/get.dart';
import 'package:quiz_first/constants/common_size.dart';
import 'package:quiz_first/constants/screen_size.dart';
import 'package:quiz_first/view/screens/feed_screen.dart';
import 'package:quiz_first/view/screens/feed/quiz_detail_screen.dart';
import 'package:quiz_first/view/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.teal,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: (_currentIndex == 0)
                  ? Icon(CupertinoIcons.folder_fill)
                  : Icon(CupertinoIcons.folder),
              label: '피드'),
          BottomNavigationBarItem(
              icon: (_currentIndex == 1)
                  ? Icon(CupertinoIcons.folder_fill)
                  : Icon(CupertinoIcons.folder),
              label: '투데이'),
          BottomNavigationBarItem(
              icon: (_currentIndex == 2)
                  ? Icon(CupertinoIcons.folder_fill)
                  : Icon(CupertinoIcons.folder),
              label: '투데이'),
          BottomNavigationBarItem(
              icon: (_currentIndex == 3)
                  ? Icon(CupertinoIcons.folder_fill)
                  : Icon(CupertinoIcons.folder),
              label: '투데이'),
          BottomNavigationBarItem(
              icon: (_currentIndex == 4)
                  ? Icon(CupertinoIcons.person_fill)
                  : Icon(CupertinoIcons.person),
              label: '내정보'),
        ],
      ),
    );
  }
}
