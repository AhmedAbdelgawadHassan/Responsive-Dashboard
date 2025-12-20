import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child, required this.padding, this.margin,required  this.borderRaduis});
  final Widget child;
  final double padding;
  final double? margin;
  final BorderRadius borderRaduis ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin:  EdgeInsets.only(top: margin ?? 0),
      decoration: BoxDecoration(
        borderRadius:borderRaduis,
        color: Colors.white,
      ),
      child: child,
    );
  }
}
