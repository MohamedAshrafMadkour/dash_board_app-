import 'package:dash_board_app/core/utils/size_config.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static TextStyle textRegular16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textMedium16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textSemiBold16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textSemiBold20(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textRegular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textSemiBold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textRegular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textSemiBold18(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textBold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textMedium20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = scaleFactor * fontSize;

  double lowerFont = fontSize * .8;
  double upperFont = fontSize * 1;
  return responsiveSize.clamp(lowerFont, upperFont);
}

double getScaleFactor(context) {
  var width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 1100;
  } else if (width < SizeConfig.desktop) {
    return width / 1300;
  } else {
    return width / 1700;
  }
}
