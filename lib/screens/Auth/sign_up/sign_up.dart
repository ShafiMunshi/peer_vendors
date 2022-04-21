import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peer_vendors/screens/Auth/sign_up/sign_up_email/sign_email.dart';
import 'package:peer_vendors/screens/Auth/sign_up/sign_up_phone/sign_up_phone.dart';
import 'package:peer_vendors/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 44.h, left: 32.w, right: 30.w),
            height: 926.h,
            width: 428.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  height: 36.h,
                ),
                bigTxt('Create an account Now.'),
                SizedBox(
                  height: 60.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(10.r)),
                      tabs: [
                        Tab(
                          text: 'Phone',
                        ),
                        Tab(
                          text: 'E-mail',
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    SignPhone(),
                    SignEmail(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
