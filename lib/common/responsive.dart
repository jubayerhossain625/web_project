
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key,required this.mobile,required this.tab, required this.desktop, }) : super(key: key);
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  static bool isMobile(BuildContext context)=>MediaQuery.of(context).size.width<725;
  static bool isTab(BuildContext context)=>MediaQuery.of(context).size.width>=725  && MediaQuery.of(context).size.width<1000;
  static bool isDesktop(BuildContext context)=>MediaQuery.of(context).size.width>=1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth<725) {
        return mobile;
      }
      else if(constraints.maxWidth>=725  && constraints.maxWidth<1000) {
        return tab;
      }

      else{
        return desktop;
      }
    });
  }
}