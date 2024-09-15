import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday_assignment/constants/colors.dart';
import 'package:yoliday_assignment/constants/values.dart';
import 'package:yoliday_assignment/widgets/portfolio_tab.dart';





class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Portfolio',style:TextStyle(fontSize:21.h,fontWeight: FontWeight.bold)),
          actions: [
            SizedBox(
              height: 26.h,
              width:26.w,
              child: Image.asset(AppValues.shopping_bag),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 26.h,
              width:26.w,
              child: Image.asset(AppValues.notification_icon),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            labelColor:AppColor.activeColor, // Set the text color of the tab
            unselectedLabelColor: Colors.black, // Set the text color of unselected tab
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                color: AppColor.activeColor, // Set the underline color of the active tab
                width: 2.0,
      
              ),
              insets: EdgeInsets.symmetric(horizontal: 0.0),
            ),
            tabs: const [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievments'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            // Project Tab
            ProjectTab(),
      
            // Saved Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Placeholder content
                  Text('Saved'),
                 
                ],
              ),
            ),
      
            // Shared Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Placeholder content
                  Text('Shared'),
                 
                ],
              ),
            ),
      
            // Achievments Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Placeholder content
                  Text('Achievments'),
                
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}