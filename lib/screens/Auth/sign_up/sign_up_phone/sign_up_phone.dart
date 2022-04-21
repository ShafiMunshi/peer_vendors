import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peer_vendors/models/app_colors.dart';
import 'package:peer_vendors/screens/Auth/sign_up/otp/otp_screen.dart';
import 'package:peer_vendors/widgets/widgets.dart';

import '../sign_up.dart';

class SignPhone extends StatelessWidget {
  const SignPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(
              //   height: 30.h,
              // ),
              TextField(
                decoration: InputDecoration(hintText: 'Full Name'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Phone Number'),
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ))),
                child: CountryCodePicker(
                  alignLeft: true,
                  initialSelection: 'BD',
                ),
              ),
              Kbutton(
                'Continue',
                () {
                  Get.to(Otp());
                },
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'Already Have an Account?  ',
                      style: GoogleFonts.poppins(
                          color: AppColors.wlcmClr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: Colors.blue)),
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}
