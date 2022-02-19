import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AttendanceGraph extends StatefulWidget {
  const AttendanceGraph({Key? key}) : super(key: key);

  @override
  State<AttendanceGraph> createState() => _AttendanceGraphState();
}

class _AttendanceGraphState extends State<AttendanceGraph> {
  late List<AttendanceChartData> _chartData;
  late TooltipBehavior _toolTipBehaviour;

  @override
  void initState() {
    _chartData = getAttendanceChartData();
    _toolTipBehaviour = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Attendence'),
      legend: Legend(
        isVisible: true,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      tooltipBehavior: _toolTipBehaviour,
      series: <CircularSeries>[
        PieSeries<AttendanceChartData, String>(
          name: 'Attendance',
          radius: '${MediaQuery.of(context).size.width * 0.102}',
          dataSource: _chartData,
          xValueMapper: (AttendanceChartData data, _) => data.continent,
          yValueMapper: (AttendanceChartData data, _) => data.gdp,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          enableTooltip: true,
        ),
      ],
    );
  }
}

List<AttendanceChartData> getAttendanceChartData() {
  List<AttendanceChartData> chartData = [
    AttendanceChartData('85%', 1),
    AttendanceChartData('75%', 5),
  ];
  return chartData;
}

class AttendanceChartData with ChangeNotifier {
  String continent;
  int gdp;
  AttendanceChartData(this.continent, this.gdp);
}
