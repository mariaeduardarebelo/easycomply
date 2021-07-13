import 'package:easycomply/MenuTile.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF1A3F6D),
          title: SizedBox(
            height: 35,
            child: Image.asset('assets/easycomply.png'),
          ),
        ),
      body: Container(
        margin: EdgeInsetsDirectional.only(top: 80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                MenuTile(
                  height: 235.0,
                  label: 'Dashboard',
                  logo: 'dashboard',
                ),
                SizedBox(height: 10),
                MenuTile(
                  height: 150.0,
                  label: 'Profile',
                  logo: 'profile',
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                MenuTile(
                  height: 150.0,
                  label: 'LGPD',
                  logo: 'lgpd',
                ),
                SizedBox(height: 10),
                MenuTile(
                  height: 235.0,
                  label: 'Checklist',
                  logo: 'checklist',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
