import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFF7F9FA),
        key: _scaffoldKey,
        appBar: MediaQuery.of(context).size.width < 800?AppBar(    // show appbar only on mobile layout
          backgroundColor: Color(0XFFFAFAFA),
          elevation: 0,
          leading: IconButton(onPressed: () {
            setState(() {
              _scaffoldKey.currentState?.openDrawer();
            });
          },
           icon: Icon(Icons.menu)),
        ):null, 
        drawer: MediaQuery.of(context).size.width < 800? Drawer(         // show drawer only on mobile layout
          child: CustomDrawer(),
        ):null,
        body: AdaptiveLayoutWidget(
          mobileLayout: (context) => DashboardMobileLayout(),
          tabletLayout: (context) => DashboardTabletLayout(),
          desktopLayout:(context)=> DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
