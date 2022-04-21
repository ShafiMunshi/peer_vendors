import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../models/app_colors.dart';


class Intro1 extends StatelessWidget {
  String title;
  String para;
  String imagee;
  Intro1(this.title, this.para, this.imagee);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.introBGClr,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100.h, left: 27.w, right: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 301.h, width: 373.w, child: Image.asset(imagee)),
                SizedBox(
                  height: 80.h,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: AppColors.wlcmClr,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  para,
                  style: TextStyle(
                      color: AppColors.wlcmClr,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
