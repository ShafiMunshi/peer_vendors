import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors/screens/Auth/sign_up/otp/verify_pass.dart';
import 'package:peer_vendors/widgets/widgets.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/WhatsApp_Image_2022-01-06_at_11.19 1.png'),
            SizedBox(
              height: 80.h,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Enter 6 digit OTP code'),
            ),
            SizedBox(
              height: 40.h,
            ),
            Kbutton('Continue', () {
              Get.to(VerifyPass());
            })
          ],
        ),
      )),
    );
  }
}
