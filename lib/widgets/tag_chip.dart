import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.tagPadding,
      decoration: BoxDecoration(
        color: AppStyles.lightGreen,
        borderRadius: BorderRadius.circular(AppStyles.pillRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppStyles.green, size: AppStyles.iconSmall),
          AppStyles.tinySeparator,
          Text(label, style: AppStyles.tagText),
        ],
      ),
    );
  }
}
