import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peer_vendors/models/app_colors.dart';
import 'package:peer_vendors/screens/home_screen/Bottom_Nav/bottom_nav.dart';
import 'package:peer_vendors/screens/home_screen/dashboard/sell/categories.dart';
import 'package:peer_vendors/widgets/widgets.dart';

class DashBoard extends StatelessWidget {
  List<String> _catogories = [
    'Cars,Bikes,Bicycles',
    'Electronic and Appliances',
    'Mobile & Accesories'
  ];

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      showDialog(context: context, builder: (ctx) => dialogEror(context));
    });

    return Scaffold(
      bottomNavigationBar: BottomNav(),
      backgroundColor: AppColors.introBGClr,
      appBar: AppBar(
        leading: Icon(
          Icons.location_on_outlined,
          color: Colors.red,
        ),
        title: Text(
          'Gazipur, Dhaka',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w300),
        ),
        actions: [
          Icon(
            Icons.help,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.headphones,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 29.w, right: 29.w, top: 12),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Search Product',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),

                //Use a Listview Builder to show axis horizontailly

                Container(
                  height: 30.h,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _catogories.length,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.only(
                              top: 4.h, left: 10.w, right: 10.h, bottom: 4.h),
                          decoration: BoxDecoration(
                            color: AppColors.listBGClr,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Text(
                            _catogories[index],
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 320.h,
            width: double.maxFinite,
            color: Colors.white,
            padding: EdgeInsets.only(
              left: 30.w,
              right: 30.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 120.h,
                    child: Image.asset(
                      'assets/images/no_porduct.png',
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  'No Products available in your area.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    top: 7.h,
                    bottom: 7.h,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Search in Nearby',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(SellCateg());
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      top: 7.h,
                      bottom: 7.h,
                    ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Put Up Something for Sale',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
