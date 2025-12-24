import 'package:flutter/material.dart';
// this class to store the size config of the screen like width and height and also the breakpoints for desktop and tablet and all things related to Responsive design
class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;


// we must not use it in desktop or tablet because it's doent rebuild the ui when we resize the screen
  static late double width, height;    /// to store the width and height of the screen  // fist it's must to get it's value from init method before using it
  static init(BuildContext context) {   // to get the height and width of the screen
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
