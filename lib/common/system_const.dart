import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*主题色*/
final Color ThemeColor = Color(0xFF62BC5B);
final Color color_66   = Color(0xFF666666);
final Color color_99   = Color(0xFF999999);
final Color color_16   = Color(0xFF161616);
final Color color_f6   = Color(0xFFF6F6F6);


// 相对宽度
double kRelativeWidth(width){
  return ScreenUtil().setHeight(width);
}

// 相对高度
double kRelativeHeight(height){
  return ScreenUtil().setHeight(height);
}

final double kScreenWidth  = ScreenUtil.screenWidthDp;
final double kScreenHeight = ScreenUtil.screenHeight;

final double kMarginCommonLr     = 16;
final double kScreenContentWidth = kScreenWidth - kMarginCommonLr * 2;