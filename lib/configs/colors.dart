import 'package:flutter/material.dart';

// Main Colors (MaterialColor):
// --------------------------------------------------
const kWhite = Colors.white;
const kBlack = Colors.black;
const kTransparent = Colors.transparent;
const kRed = Colors.red;
const kGreen = Colors.green;
const kBlue = Colors.blue;
const kYellow = Colors.yellow;
const kGrey = Colors.grey;

//--App Colors Pallets:
Color kAppPrimary = Color(0xff6C5ECF);
Color kAppSecond = Color(0xff38ABBE);
Color kAppAlert = Color(0xffED6363);
Color kAppPrice = Color(0xff2C96F1);
Color kAppBgColor1 = Color(0xff1F1D2B);
Color kAppBgColor2 = Color(0xff2B2937);
Color kAppBgColor3 = Color(0xff242231);
Color kAppBgColor4 = Color(0xff252836);
Color kAppBgColor5 = Color(0xff2B2844);
Color kAppBgColor6 = Color(0xffECEDEF);
Color kAppPrimaryText = Color(0xffF1F0F2);
Color kAppSecondText = Color(0xff999999);
Color kAppSubtitle = Color(0xff504F5E);

//--App Colors Additional:
const kAppBiruDark = Color(0xFF0081a7);
final kAppBiruLight = Color(0xFF00afb9);
const kAppKuning = Color(0xFFfdfcdc);
const kAppCoklat = Color(0xFFfed9b7);
const kAppMerah = Color(0xFFf07167);
const kAppGrey = Color(0xFFEEEEEE);

//--Bootstrap Color Standards: (Primary, Secondary,Success,Danger,Warnig,Info,Light,Dark)
//--Background Color:
const kBgPrimary = Color(0xFF007BFF);
const kBgSecondary = Color(0xFF6C757D);
const kBgSuccess = Color(0xFF28A745);
const kBgDanger = Color(0xFFDC3545);
const kBgWarning = Color(0xFFFFC107);
const kBgInfo = Color(0xFF17A2B8);
const kBgLight = Color(0xFFF8F9FA);
const kBgDark = Color(0xFF343A40);

//--Gradient:
LinearGradient kAppGradientPrim = LinearGradient(
  colors: [kAppPrimary, kWhite, kAppSecond],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient kPrimaryGradient = LinearGradient(
  colors: [kAppPrimary, kWhite],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);