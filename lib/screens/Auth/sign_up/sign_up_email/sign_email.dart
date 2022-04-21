import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peer_vendors/screens/Auth/sign_up/sign_up.dart';

import '../../../../models/app_colors.dart';

class SignEmail extends StatelessWidget {
  const SignEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(
          //   height: 30.h,
          // ),
          TextField(
            decoration: InputDecoration(hintText: 'Full Name'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'E-mail address'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                    top: 10.h, right: 250.w, left: 26.h, bottom: 10.h)),
            onPressed: () {
              Get.to(SignUp());
            },
            child: Text(
              'Continue',
              style: TextStyle(
                  // height: 30.h,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          RichText(
            text: TextSpan(
                text: 'Already Have an Account?  ',
                style: GoogleFonts.poppins(
                    color: AppColors.wlcmClr,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(text: 'Login', style: TextStyle(color: Colors.blue)),
                ]),
          )
        ],
      ),
    ));
  }
}
