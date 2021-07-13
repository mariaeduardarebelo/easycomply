import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF214979),
          title: SizedBox(
            height: 40,
            child: Image.asset('assets/easycomply.png'),
          )
        ),
        body: Center(
          child: Text('body')
        ),
      ),
    ),
  );
} 