import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DonutPieChart extends StatefulWidget {
  @override
  _DonutPieChartState createState() => _DonutPieChartState();
}

class _DonutPieChartState extends State<DonutPieChart> {
  late List<LGPDData> _chartData;

  @override
  void initState() {
    super.initState();
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1C4E89),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 50.0),
          child: SfCircularChart(
            title: ChartTitle(
              text: 'You\'re complying with \n 3 points of LGPD'.toUpperCase(),
              textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0  )
            ),
            palette: <Color>[Color(0xFF2B8540), Color(0xFFE6EBF0)],
            legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap, textStyle: TextStyle(color: Colors.white)),
            series: <CircularSeries>[
              DoughnutSeries<LGPDData, String>(
                dataSource: _chartData,
                xValueMapper: (LGPDData data, _) => data.label,
                yValueMapper: (LGPDData data, _) => data.count,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<LGPDData> getChartData() {
    final List<LGPDData> chartData = [
      LGPDData('Current', 5),
      LGPDData('Total', 10),
    ];

    return chartData;
  }
}

class LGPDData {
  final String label;
  final int count;

  LGPDData(this.label, this.count);
}
