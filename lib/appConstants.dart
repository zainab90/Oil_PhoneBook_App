
import 'package:flutter/material.dart';

Color greenColor=const Color(0xff36B37E);
Color blackColor=const Color(0xff05120D);
Color simGreenColor = const Color(0xffdff5ec); // Selects a mid-range green.
Color simYellowColor=const Color(0xfffcf3c3);
OutlineInputBorder _myTextBorder= OutlineInputBorder(
  borderSide: BorderSide(
    color: greenColor!,
  ),
);

BorderRadius _containerBorder=  const BorderRadius.only(
    topLeft: Radius.circular(22.0),
    topRight:Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(0.0) );

RoundedRectangleBorder roundBtnBorder=RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20.0),
side: const BorderSide(
color: Colors.black,
style: BorderStyle.solid,
width: 1.8
)

);



 const customSwatch = MaterialColor(
  0xFF36B37E
   ,
  <int, Color>{
    50: Color(0xFFe3f4ec),
    100: Color(0xFFbce3d0),
    200: Color(0xFF91d1b2),
    300: Color(0xFF60c095),
    400: Color(0xFF36b37f),
    500: Color(0xFF00a669),
    600: Color(0xFF00975f),
    700: Color(0xFF008552),
    800: Color(0xFF007446),
    900: Color(0xFF005530),
  },
);