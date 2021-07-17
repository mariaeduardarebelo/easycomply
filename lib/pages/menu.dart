import 'package:easycomply/components/menu_tile.dart';
import 'package:easycomply/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'model/checkbox_state.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final items = [
    CheckBoxState(title: "primeira lei"),
    CheckBoxState(title: "segunda lei"),
    CheckBoxState(title: "terceira lei"),
    CheckBoxState(title: "quarta lei"),
    CheckBoxState(title: "quinta lei"),
    CheckBoxState(title: "sexta lei"),
  ];

@override
  void initState() {
    super.initState();

    var box = Hive.box<CheckBoxState>('lgpd_checkboxes');
    var boxLength = box.toMap().length;
    
    if (boxLength == 0) {
      box.addAll(items);
    }
  }

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
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(initialPageIndex: 0)),
                  ),
                ),
                SizedBox(height: 10),
                MenuTile(
                  height: 150.0,
                  label: 'Profile',
                  logo: 'profile',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(initialPageIndex: 3)),
                  ),
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
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(initialPageIndex: 2)),
                  ),
                ),
                SizedBox(height: 10),
                MenuTile(
                  height: 235.0,
                  label: 'Checklist',
                  logo: 'checklist',
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(initialPageIndex: 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
