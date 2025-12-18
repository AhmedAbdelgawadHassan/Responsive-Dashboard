
// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main()
{
  runApp(Responsive_Dashboard());
}

class Responsive_Dashboard extends StatelessWidget {
  const Responsive_Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(), // to enable scrolling with mouse drag in desktop
      home: DashboardView(),
    );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {// to enable scrolling with mouse drag in desktop
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}