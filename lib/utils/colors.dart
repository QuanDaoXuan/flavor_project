import 'package:flutter/material.dart';

class AppColors {
  // ignore: non_constant_identifier_names
  static final MaterialColor BACKGROUND_Navigation = _factoryColor(0xffF4F4F4);
  // ignore: non_constant_identifier_names
  static final MaterialColor BACKGROUND_COLOR = _factoryColor(0xff21409A);
  // ignore: non_constant_identifier_names
  static final MaterialColor PRIMARY_COLOR = _factoryColor(0xff2B3340);
  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT = _factoryColor(0xfff4f4f8);

  // ignore: non_constant_identifier_names
  static final MaterialColor BLACK = _factoryColor(0xff000000);

  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_SILVER = _factoryColor(0xffd8d8d8);

  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_GREY = _factoryColor(0xffe0e0e0);

  // ignore: non_constant_identifier_names
  static final MaterialColor DARK = _factoryColor(0xff3a3a3a);

  // ignore: non_constant_identifier_names
  static final MaterialColor DARK_GRAY = _factoryColor(0xff333333);

  // ignore: non_constant_identifier_names
  static final MaterialColor GRAY90 = _factoryColor(0xffe5e5e5);

  // ignore: non_constant_identifier_names
  static final MaterialColor WHITE = _factoryColor(0xffffffff);

  // ignore: non_constant_identifier_names
  static final MaterialColor WHITE_SMOKE = _factoryColor(0xffF2F2F2);

  // ignore: non_constant_identifier_names
  static final MaterialColor GREEN = _factoryColor(0xff349e40);

  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_GREEN = _factoryColor(0xff3AB54A);

  // ignore: non_constant_identifier_names
  static final MaterialColor SHADOW = _factoryColor(0xffE7EAF0);

  // ignore: non_constant_identifier_names
  static final MaterialColor BLUE_GREY = _factoryColor(0xffEEEFF3);

  // ignore: non_constant_identifier_names
  static final MaterialColor SHAMROCK = _factoryColor(0xff2DC76D);

  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_SHAMROCK = _factoryColor(0xffEBF9EB);

  // ignore: non_constant_identifier_names
  static final MaterialColor DARK_LIVER = _factoryColor(0xff4f4f4f);

  // ignore: non_constant_identifier_names
  static final MaterialColor OFF_GREEN = _factoryColor(0xffE7F9EE);

  // ignore: non_constant_identifier_names
  static final MaterialColor DODGER_BLUE = _factoryColor(0xff2f80ed);

  // ignore: non_constant_identifier_names
  static final MaterialColor WEWAK = _factoryColor(0xffF29697);

  // ignore: non_constant_identifier_names
  static final MaterialColor CORNFLOWER_BLUE = _factoryColor(0xff438FF5);

  // ignore: non_constant_identifier_names
  static final Color TRANSPARENT = Colors.transparent;

  // ignore: non_constant_identifier_names
  static final Color AMBER = Colors.amber;

  // ignore: non_constant_identifier_names
  static final Color BITTERSWEET = _factoryColor(0xffFF7052);

  // ignore: non_constant_identifier_names
  static final Color FLORAL_WHITE = _factoryColor(0xffFFFBEE);

  // ignore: non_constant_identifier_names
  static final Color SILVER = _factoryColor(0xffBDBDBD);

  // ignore: non_constant_identifier_names
  static final MaterialColor PINK_SMOKE = _factoryColor(0xffFFF3F1);

  static MaterialColor hex(String hex) =>
      AppColors._factoryColor(AppColors._getColorHexFromStr(hex));

  static MaterialColor _factoryColor(int color) {
    return MaterialColor(color, <int, Color>{
      50: Color(color),
      100: Color(color),
      200: Color(color),
      300: Color(color),
      400: Color(color),
      500: Color(color),
      600: Color(color),
      700: Color(color),
      800: Color(color),
      900: Color(color),
    });
  }

  static int _getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        val = 0xFFFFFFFF;
      }
    }
    return val;
  }
}
