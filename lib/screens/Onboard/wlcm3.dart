import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors/models/app_string.dart';
import 'package:peer_vendors/screens/Auth/auth_scren.dart';
import 'package:peer_vendors/screens/Onboard/page/intro1.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/app_colors.dart';

class Wlcm3 extends StatefulWidget {
  @override
  State<Wlcm3> createState() => _Wlcm3State();
}

class _Wlcm3State extends State<Wlcm3> {
  PageController _controller = PageController();

  bool onLastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (pageIndex) {
              setState(() {
                onLastpage = (pageIndex == 3);
              });
            },
            controller: _controller,
            children: [
              Intro1('Welcome to Peer Vendor', AppString.wlcm1Txt,
                  'assets/images/undraw_Welcome_re_h3d9-removebg-preview 1.png'),
              Intro1('Find Your Favourite Products', AppString.wlcm1Txt,
                  'assets/images/undraw_healthy_options_sdo3-removebg-preview 1.png'),
              Intro1('Buy & Sell Around You', AppString.wlcm1Txt,
                  'assets/images/undraw_unlock_24mb-removebg-preview 1.png'),
              Intro1('Safe & Trusted', AppString.wlcm1Txt,
                  'assets/images/undraw_Business_deal_re_up4u-removebg-preview 1.png'),
            ],
          ),
          Container(
            alignment: Alignment(0, -0.1),
            child: SmoothPageIndicator(
              count: 4,
              controller: _controller,
            ),
          ),
          Container(
            alignment: Alignment(0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13.w),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: AppColors.orangeClr,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onLastpage
                    ? InkWell(
                        onTap: () {
                          Get.to(_controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn));
                        },
                        child: Container(
                          height: 71.h,
                          width: 214.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.nxtClr,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r))),
                          child: Text(
                            'Done',
                            style: TextStyle(
                                color: AppColors.wlcmClr,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          Get.to(AuthScreen());
                        },
                        child: Container(
                          height: 71.h,
                          width: 214.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.nxtClr,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r))),
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: AppColors.wlcmClr,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
