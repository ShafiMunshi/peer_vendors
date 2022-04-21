import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/models/app_colors.dart';

class LangChoose extends StatefulWidget {
  const LangChoose({Key? key}) : super(key: key);

  @override
  State<LangChoose> createState() => _LangChooseState();
}

class _LangChooseState extends State<LangChoose> {
  @override
  Widget build(BuildContext context) {
    bool eng = false;
    bool kris = false;
    bool franc = false;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 34.r, top: 54.r),
          height: 271.h,
          width: 324.w,
          decoration: BoxDecoration(
            color: AppColors.orangeClr,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Your Language',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 29.h,
              ),
              Row(
                children: [
                  Checkbox(
                    
                      tristate: true,
                      value: eng,
                      onChanged: (value) {
                        setState(() {
                          eng = value!;
                        });
                      }),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'English',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  Checkbox(
                      value: eng,
                      onChanged: (value) {
                        setState(() {
                          eng = value!;
                        });
                      }),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Kirstrin',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: franc,
                    onChanged: (val) {
                      setState(() {
                        franc = val!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Francis',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
