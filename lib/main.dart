import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peer_vendors/screens/Locale/lan_choose.dart';

import 'package:peer_vendors/screens/Onboard/wlcm3.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(428, 926),
        builder: (context) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.poppinsTextTheme(
                  Theme.of(context).textTheme.apply()),
            ),
            home: Wlcm3(),
          );
        });
  }
}
