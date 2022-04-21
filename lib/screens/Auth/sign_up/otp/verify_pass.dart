import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors/screens/home_screen/dashboard/dashboard.dart';
import 'package:peer_vendors/widgets/widgets.dart';

class VerifyPass extends StatelessWidget {
  const VerifyPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.to(DashBoard());
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/check 1.png'),
            SizedBox(
              height: 30.h,
            ),
            bigTxt('Well-Done!')
          ],
        ),
      ),
    );
  }
}
