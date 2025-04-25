import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartDesign extends StatefulWidget {
  const ChartDesign({super.key});

  @override
  State<ChartDesign> createState() => _ChartDesignState();
}

class _ChartDesignState extends State<ChartDesign> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          currentIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          color: const Color(0xff208CC8),
          radius: currentIndex == 0 ? 60 : 50,
          value: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          radius: currentIndex == 1 ? 60 : 50,
          value: 25,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          radius: currentIndex == 2 ? 60 : 50,
          value: 20,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          radius: currentIndex == 3 ? 60 : 50,
          value: 22,
          showTitle: false,
        ),
      ],
    );
  }
}
