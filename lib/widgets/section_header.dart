import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, this.actionLabel});

  final String title;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.sectionTitle),
        if (actionLabel != null) Text(actionLabel!, style: AppStyles.linkText),
      ],
    );
  }
}
