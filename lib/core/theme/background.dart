import 'package:dreckks/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        gradient: AppColors.backgroundGradient,
        ),
        child: child,
      );
      
    
  }
}
