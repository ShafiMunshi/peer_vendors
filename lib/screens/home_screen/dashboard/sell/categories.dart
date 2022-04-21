import 'package:flutter/material.dart';
import 'package:peer_vendors/models/app_colors.dart';

class SellCateg extends StatelessWidget {
  const SellCateg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.introBGClr,
      appBar: AppBar(
        title: Text('Sell'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a Category',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.wlcmClr,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    tileColor: Colors.white,
                    title: Text('Cars'),
                    leading: Icon(Icons.circle),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text('Bikes'),
                    leading: Icon(Icons.circle),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text('BiCycle'),
                    leading: Icon(Icons.circle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
