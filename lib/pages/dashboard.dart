import 'package:easycomply/components/donut_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF1C4E89),
        body: Container(
          child: DonutPieChart(),
        ),
    );
  }
}
