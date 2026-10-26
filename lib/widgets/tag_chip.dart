import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppStyles.lightGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppStyles.green, size: 16),
          AppStyles.tinySeparator,
          Text(label, style: AppStyles.tagText),
        ],
      ),
    );
  }
}
