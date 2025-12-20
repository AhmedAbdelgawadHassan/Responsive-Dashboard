import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1; // Track the active section index   -1 means none is active
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
          activeIndex= pieTouchResponse?.touchedSection?.touchedSectionIndex??-1;   /// for animating the touched section
          setState(() {}); // Refresh to show changes
            }
          ),
          centerSpaceRadius: 40,
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              color: Color(0xff208CC8),
              value: 40,
              radius: activeIndex==0?60:50,
              showTitle: false,  // Disable titles on pie sections
              
            ),
            PieChartSectionData(
              color: Color(0xffE2DECD),
              value: 25,
              radius:  activeIndex==1?60:50,
             showTitle: false,
            ),
            PieChartSectionData(
              color: Color(0xff064061),
              value: 20,
              radius:  activeIndex==2?60:50,
              showTitle: false,
            ),
            PieChartSectionData(
              color: Color.fromARGB(255, 15, 24, 194),
              value: 22,
              radius:  activeIndex==3?60:50,
              showTitle: false,
            ),
          ],
        ),
      ),
    );
  }
}