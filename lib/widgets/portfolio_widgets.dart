import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yoliday_assignment/constants/colors.dart';
import 'package:yoliday_assignment/constants/values.dart';

//this section is for creating the project Cards 
Widget Portfolio_Card({String? imagePath,String? title,String? subTitle,String? author}){
  return Container(
      width: 343.w,  // 343px width
      height: 110.h, // 110px height
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColor.normalColor)
      ),
      child: Row(
        children: [
          // Left side image or icon (optional)
          SizedBox(height:110.h,width:110.w ,child: Image.asset(imagePath!,fit: BoxFit.fill,)),
          SizedBox(width: 12.w),
          
          // Text section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  subTitle!,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  author!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          
          // "A" badge (optional)
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8.r),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF39519), // #F39519
                    Color(0xFFFFCD67), // #FFCD67
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'A',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
}


//This section is for creating SearchBar
Widget searchBar(){
  return Container(
    height: 44.h,
    width: 343.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: AppColor.normalColor)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200.w,
          child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      
                      hintText: "Search your project",
                      hintStyle: TextStyle(
                        color: AppColor.normalColor,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: AppColor.normalColor,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                    ),
                    onChanged: (value) {
                      
                    },
                    maxLines: 1,
                    autocorrect: false, 
                    obscureText: false, 
                  ),
        ),

      Padding(
        padding: EdgeInsets.all(5.w),
        child: Container(
          height: 28.h,
          width: 28.h,
          decoration: BoxDecoration(
            color: AppColor.activeColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(Icons.search,size:20.h ,color: Colors.white,),
        
        ),
      ) ,
      ],
    )
  );
}

 List<Map<String, String>> projects = [
    { 'imagepath':AppValues.Project_image_1,
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
    },
    {
      'imagepath':AppValues.Project_image_2,
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
    },
    {
      'imagepath':AppValues.Project_image_3,
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
    },

    {
      'imagepath':AppValues.Project_image_4,
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
    },
    {
      'imagepath':AppValues.Project_image_5,
      'title': 'Kemampuan Merangkum Tulisan',
      'subtitle': 'BAHASA SUNDA',
      'author': 'Oleh Al-Baiqi Samaan',
    },
    
    
  ];