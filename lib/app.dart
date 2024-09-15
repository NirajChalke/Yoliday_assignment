import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday_assignment/constants/colors.dart';
import 'package:yoliday_assignment/screens/home_screen.dart';
import 'package:yoliday_assignment/screens/input_screen.dart';
import 'package:yoliday_assignment/screens/portfolio_screen.dart';
import 'package:yoliday_assignment/screens/profile_screen.dart';
import 'package:yoliday_assignment/widgets/bottomNavigation.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 1; // Initially show Portfolio screen

  final List<Widget> _screens = [
    HomeScreen(),
    PortfolioPage(),
    InputScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
            width: 375.w,
            height: 65.h,
            decoration: BoxDecoration(
              color: AppColor.activeColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.h),
                  topRight: Radius.circular(20.h)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              onTap: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              currentIndex: _selectedIndex,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: AppColor.normalColor,
              selectedItemColor: AppColor.activeColor,
              items: bottomTab,
            )));
  }
}
