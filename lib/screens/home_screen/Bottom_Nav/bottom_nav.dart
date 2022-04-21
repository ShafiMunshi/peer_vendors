import 'package:flutter/material.dart';
import 'package:peer_vendors/screens/home_screen/dashboard/dashboard.dart';
import 'package:peer_vendors/screens/home_screen/tab_bar/tabs.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> _pages = [
    DashBoard(),
    TabsBar(),
    DashBoard(),
    DashBoard(),
  ];

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop_2_outlined),
          label: 'My Ads',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
      onTap: _onItemTap,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[350],
      iconSize: 30,
    );
  }
}
