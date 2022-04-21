import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/app_colors.dart';

dialogEror(context){
  return Dialog(
                backgroundColor: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 18.0, left: 30.w),
                      margin: EdgeInsets.only(top: 13.0, right: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 0.0,
                              offset: Offset(0.0, 0.0),
                            ),
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Help & Support',
                            style: TextStyle(
                              color: AppColors.wlcmClr,
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 30.h,
                                  child: Image.asset('assets/icons/play.png')),
                              SizedBox(
                                width: 5,
                              ),
                              orangTxt(
                                'Fix my Location Problem',
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 30.h,
                                  child: Image.asset('assets/icons/play.png')),
                              SizedBox(
                                width: 5,
                              ),
                              orangTxt(
                                'How to use this app',
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  height: 30.h,
                                  child: Image.asset(
                                      'assets/icons/User_Voice.png')),
                              SizedBox(
                                width: 5,
                              ),
                              orangTxt(
                                'Contact us for Location',
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 21.0,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.close, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
}

orangTxt(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.orangeClr,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500),
  );
}

bigTxt(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: AppColors.wlcmClr, fontSize: 36.sp, fontWeight: FontWeight.w600),
  );
}

Kbutton(txt, ontap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        padding:
            EdgeInsets.only(top: 10.h, right: 250.w, left: 26.h, bottom: 10.h)),
    onPressed: ontap,
    child: Text(
      txt,
      style: TextStyle(
          // height: 30.h,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400),
    ),
  );
}
