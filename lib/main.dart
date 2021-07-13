import 'package:easycomply/Menu.dart';
import 'package:easycomply/Profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/profile': (context) => Profile(),
        '/dashboard': (context) => Profile(),
        '/checklist': (context) => Profile(),
        '/lgpd': (context) => Profile(),
      },
    ),
  );
}

