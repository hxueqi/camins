import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/section_header.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({super.key, required this.imagePaths});

  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppStyles.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: 'Fotos', actionLabel: 'Veure-les totes'),
          AppStyles.mediumSeparator,
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              for (final path in imagePaths)
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppStyles.photoRadius),
                  child: Image.asset(path, fit: BoxFit.cover),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
