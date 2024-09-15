import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday_assignment/constants/colors.dart';
import 'package:yoliday_assignment/constants/values.dart';

import 'package:yoliday_assignment/widgets/portfolio_widgets.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          searchBar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return Portfolio_Card(
                    imagePath: project['imagepath'],
                    title: project['title']!,
                    subTitle: project['subtitle']!,
                    author: project['author']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 104.w, // Set width to 104px
        height: 34.h, // Set height to 34px
        child: FloatingActionButton(
          onPressed: () {
            // Define the filter action here
          },
          backgroundColor: AppColor.activeColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(17.r), // Half of height for pill shape
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset(
                    AppValues.Filter_icon,
                    fit: BoxFit.cover,
                  )), // Adjust icon size
              SizedBox(width: 4.w),
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: 12.sp, // Adjust font size for smaller button
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
