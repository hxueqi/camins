import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.iconColor,
  });

  final IconData icon;
  final String value;
  final String label;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: iconColor ?? AppStyles.green, size: 22),
        AppStyles.tinySeparator,
        Text(value, style: AppStyles.statValue),
        Text(label, style: AppStyles.smallText),
      ],
    );
  }
}
