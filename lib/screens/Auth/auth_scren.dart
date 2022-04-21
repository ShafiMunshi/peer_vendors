import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors/models/app_colors.dart';
import 'package:peer_vendors/screens/Auth/sign_up/sign_up.dart';
import 'package:peer_vendors/widgets/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.introBGClr,
      body: Container(
        height: 926.h,
        width: 428.w,
        padding: EdgeInsets.only(top: 115.h, left: 32.w, right: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.w,
              width: 100.w,
              child: Image.asset(
                  'assets/images/WhatsApp_Image_2022-01-06_at_11.19 1.png'),
            ),
            SizedBox(
              height: 26.h,
            ),
            bigTxt(
              "Let's Get Started"),
            Text(
              "If you continue, you are accepting\nOur Terms & Condition and",
              style: TextStyle(
                  color: AppColors.wlcmClr,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
            ),
            RichText(
                text: TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w400),
            )),
            SizedBox(
              height: 88.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 10.h, right: 250.w, left: 26.h, bottom: 10.h)),
                onPressed: () {
                  Get.to(SignUp());
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                      // height: 30.h,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(
                        top: 10.h, bottom: 10.h, right: 277.w, left: 26.h)),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                      // height: 30.h,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 24.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Or Continue With',
                style: TextStyle(
                    color: AppColors.wlcmClr,
                    // height: 30.h,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey[300],
                  child: Image.asset('assets/icons/google.png', height: 29.h),
                ),
                SizedBox(
                  width: 30.w,
                ),
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey[300],
                  child: Image.asset('assets/icons/facebook.png', height: 29.h),
                ),
                SizedBox(
                  width: 30.w,
                ),
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey[300],
                  child: Image.asset('assets/icons/twitter.png', height: 29.h),
                ),
              ],
            ),
            SizedBox(
              height: 52.h,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/play.png',
                  height: 35.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Need Help?',
                  style: TextStyle(
                      color: AppColors.orangeClr,
                      // height: 30.h,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
