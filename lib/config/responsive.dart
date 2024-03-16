import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  final Widget smallMobile;
  const Responsive({
    required Key key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.smallMobile
  }) : super(key: key);

  static bool isMobile(BuildContext context)=>MediaQuery.of(context).size.width<768;
  static bool isTablet(BuildContext context)=>MediaQuery.of(context).size.width<1200 && MediaQuery.of(context).size.width>=768;
  static bool isDesktop(BuildContext context)=>
      MediaQuery.of(context).size.width>=1200;


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if(_size.width<768 && _size.width>=376)
      {
        return mobile;
      }
    else if(_size.width>=1200)
      {
        return desktop;
      }
    else if(_size.width>=768)
      {
        return tablet;
      }
    else{
      return smallMobile;
    }
  }
}
