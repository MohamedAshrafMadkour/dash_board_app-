import 'package:dash_board_app/core/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedChartDesign extends StatefulWidget {
  const DetailedChartDesign({super.key});

  @override
  State<DetailedChartDesign> createState() => _ChartDesignState();
}

class _ChartDesignState extends State<DetailedChartDesign> {
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
          title: currentIndex == 0 ? 'Design service' : '40%',
          titleStyle: Styles.textMedium16(context).copyWith(
            color: currentIndex == 0 ? const Color(0xff4EB7F2) : Colors.white,
          ),
          titlePositionPercentageOffset: currentIndex == 0 ? 1.4 : null,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          radius: currentIndex == 1 ? 60 : 50,
          value: 25,
          title: currentIndex == 1 ? 'Design product' : '25%',
          titleStyle: Styles.textMedium16(context).copyWith(
            color: currentIndex == 1 ? const Color(0xff4EB7F2) : Colors.white,
          ),
          titlePositionPercentageOffset: currentIndex == 1 ? 2.1 : null,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          radius: currentIndex == 2 ? 60 : 50,
          value: 20,
          title: currentIndex == 2 ? 'Design royalti' : '20%',
          titleStyle: Styles.textMedium16(context).copyWith(
            color: currentIndex == 2 ? const Color(0xff4EB7F2) : Colors.white,
          ),
          titlePositionPercentageOffset: currentIndex == 2 ? 1.3 : null,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          radius: currentIndex == 3 ? 60 : 50,
          value: 22,
          title: currentIndex == 3 ? 'Other' : '22%',
          titleStyle: Styles.textMedium16(context).copyWith(
            color: currentIndex == 3 ? const Color(0xff4EB7F2) : Colors.white,
          ),
          titlePositionPercentageOffset: currentIndex == 3 ? 1.5 : null,
        ),
      ],
    );
  }
}
