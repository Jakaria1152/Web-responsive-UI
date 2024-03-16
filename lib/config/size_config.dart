import 'package:flutter/cupertino.dart';

class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? _screenHeight;
  static double? _screenWidth;
  static double? _blockSizeHorizontal;
  static double? _blockSizeVertical;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    _screenHeight = _mediaQueryData?.size.height;
    _screenWidth = _mediaQueryData?.size.width;
    _blockSizeHorizontal = (_screenWidth!/100);
    _blockSizeVertical = (_screenHeight!/100);
  }
}