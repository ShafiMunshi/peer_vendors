import 'package:flutter/material.dart';

import 'tab_pages/favourite.dart';
import 'tab_pages/my_ads.dart';

class TabsBar extends StatelessWidget {
  const TabsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(
              Icons.shop,
              color: Colors.black,
            ),
            child: Column(
              children: [
                Text(
                  'My AdsF',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4F4C4C),
                  ),
                ),
              ],
            ),
          ),
          Tab(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            child: Column(
              children: [
                Text(
                  'Favourite',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4F4C4C),
                  ),
                ),
              ],
            ),
          )
        ]),
        centerTitle: true,
        title: Text(
          'My Ads',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4F4C4C),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: TabBarView(children: [
        myAds(),
        Favourite(),
      ]),
    );
  }
}
