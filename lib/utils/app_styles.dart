import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles // App Styles taked from Style Organizer pluggin
{
  static   TextStyle styleRegular16(context){        // convert variable to function to can receive context 
    return TextStyle(
    fontSize:getResponsiveFontSize(context,baseFontSize: 16),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: Color(0XFF064060),
  );
  }

  static  TextStyle styleMedium16 (context){
    return  TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 16),
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
    color: Color(0XFF064060),
  );
  }

  static  TextStyle styleSemiBold16 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 16),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0XFF064060),
  );
  }

  static  TextStyle styleSemiBold20 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 20),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0XFF064060),
  );
  }

  static  TextStyle styleSemiBold12 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 12),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0XFFAAAAAA),
  );
  }

  static  TextStyle styleSemiBold24 (context){
    return  TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 24),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0XFF4EB7F2),
  );
  }

  static  TextStyle styleRegular14 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 14),
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: Color(0XFFAAAAAA),
  );
  }

  static  TextStyle styleSemiBold18 (context){
    return TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 18),
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0XFFFFFFFF),
  );
  }

  static  TextStyle styleBold16(context){
    return  TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 16),
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
    color: Color(0XFF4EB7F2),
  );
  }

  static  TextStyle styleMedium20 (context){
    return  TextStyle(
    fontSize: getResponsiveFontSize(context,baseFontSize: 20),
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
    color: Color(0XFFFFFFFF),
  );
  }

 
}








 double getResponsiveFontSize(context,{required double baseFontSize,}) {    // Method to Make Text Responsive
    double scaleFactor = getScaleFactor(context);  
    double responsiveFontSize = baseFontSize * scaleFactor;
    double upperLimit = baseFontSize * 1.2;
    double lowerLimit = baseFontSize * 0.8;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(context) {   // Method get Scale Factor that must to multiply to base font size to make it responsive
    // var dispatcher = PlatformDispatcher.instance;
    // double phsicalWidth = dispatcher.views.first.physicalSize.width;
    // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double screenWidth = phsicalWidth / devicePixelRatio;

    double screenWidth=MediaQuery.of(context).size.width;
    if (screenWidth <= SizeConfig.tablet) { // 800
      return screenWidth / 550;   
    } else if (screenWidth <= SizeConfig.desktop) { // 1200
      return screenWidth / 1000;
    } else {
      return screenWidth / 1920;    
    }
  }