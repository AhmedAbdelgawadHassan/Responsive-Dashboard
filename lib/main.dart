
// ignore_for_file: camel_case_types

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
      home: DashboardView(),
    );
  }
}
