import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, size: AppStyles.iconMedium),
      style: IconButton.styleFrom(
        backgroundColor: AppStyles.white,
        foregroundColor: AppStyles.darkText,
        fixedSize: Size.square(AppStyles.roundButtonSize),
        elevation: AppStyles.buttonElevation,
        shadowColor: AppStyles.shadow,
      ),
    );
  }
}
