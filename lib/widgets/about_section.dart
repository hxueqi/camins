import 'package:flutter/material.dart';
import 'package:camins/models/trail_tag.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/section_header.dart';
import 'package:camins/widgets/tag_chip.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.description,
    required this.tags,
  });

  final String description;
  final List<TrailTag> tags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppStyles.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: 'Sobre la ruta'),
          AppStyles.smallSeparator,
          Text(description, style: AppStyles.bodyText),
          AppStyles.mediumSeparator,
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final tag in tags) TagChip(icon: tag.icon, label: tag.label),
            ],
          ),
        ],
      ),
    );
  }
}
