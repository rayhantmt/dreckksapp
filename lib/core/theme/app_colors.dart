import 'package:flutter/material.dart';

class AppColors {



  static const Color gradientStart = Color(0xFF1F2C33);

  static const Color gradientEnd = Color(0xFF2A3D45);


  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
   // stops: [0.5,0.0],
    colors: [gradientStart, gradientEnd],
  );


}
