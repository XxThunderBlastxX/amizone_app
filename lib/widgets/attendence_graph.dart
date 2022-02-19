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

  //TODO : Add Title as 'Attendance'
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth * 0.80,
        height: constraints.maxHeight * 0.85,
        padding: const EdgeInsets.all(8.0),
        child: SfCircularChart(
          // title: ChartTitle(
          //   text: 'Attendence',
          // ),
          legend: Legend(
            isVisible: true,
            overflowMode: LegendItemOverflowMode.wrap,
            isResponsive: true,
            orientation: LegendItemOrientation.horizontal,
            width: '${constraints.maxWidth * 0.4}',
            height: '${constraints.maxHeight * 0.8}',
            itemPadding: 10.0,
            // borderWidth: 2.0,
            // borderColor: Colors.red,
          ),
          tooltipBehavior: _toolTipBehaviour,
          series: <CircularSeries>[
            PieSeries<AttendanceChartData, String>(
              radius: '${MediaQuery.of(context).size.width * 0.12}',
              dataSource: _chartData,
              xValueMapper: (AttendanceChartData data, _) => data.percentage,
              yValueMapper: (AttendanceChartData data, _) => data.numOfSubjects,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true,
            ),
          ],
        ),
      ),
    );
  }
}

List<AttendanceChartData> getAttendanceChartData() {
  List<AttendanceChartData> chartData = [
    AttendanceChartData('Above 85%', 1),
    AttendanceChartData('Above 75%', 4),
    AttendanceChartData('Below 75%', 1),
  ];
  return chartData;
}

class AttendanceChartData with ChangeNotifier {
  String percentage;
  int numOfSubjects;
  AttendanceChartData(this.percentage, this.numOfSubjects);
}
