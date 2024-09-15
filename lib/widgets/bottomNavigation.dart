import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday_assignment/constants/colors.dart';
import 'package:yoliday_assignment/constants/values.dart';

var bottomTab = [
  BottomNavigationBarItem(
          icon: SizedBox(
               width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
              AppValues.Home_icon,
              fit: BoxFit.fill,
            ),
          ),
          activeIcon: SizedBox(
              width: 25.w, // Increased size
            height: 25.h, // Increased size
            child: Image.asset(
              AppValues.Home_icon,
              color: AppColor.activeColor, // Assuming you have an AppColor class
              fit: BoxFit.fill,
            ),
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
             width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
             AppValues.Portfolio_icon,
              fit: BoxFit.fill,
            ),
          ),
          activeIcon: SizedBox(
              width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
              AppValues.Portfolio_icon,
              color: AppColor.activeColor,
              fit: BoxFit.fill,
            ),
          ),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
              AppValues.Input_icon,
              fit: BoxFit.fill,
            ),
          ),
          activeIcon: SizedBox(
            width: 25.w, // Increased size
            height: 25.h, // Increased size
            child: Image.asset(
              AppValues.Input_icon,
              color: AppColor.activeColor,
              fit: BoxFit.fill,
            ),
          ),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
               width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
              AppValues.Profile_icon,
              fit: BoxFit.fill,
            ),
          ),
          activeIcon: SizedBox(
              width: 25.w, // Increased size
            height: 25.h,  // Increased size
            child: Image.asset(
              AppValues.Profile_icon,
              color: AppColor.activeColor,
              fit: BoxFit.fill,
            ),
          ),
          label: "search",
        ),
 
];
