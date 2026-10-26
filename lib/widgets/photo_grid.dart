import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/photo_tile.dart';
import 'package:camins/widgets/section_header.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({
    super.key,
    required this.imagePaths,
    this.morePhotosCount = 0,
  });

  final List<String> imagePaths;

  /// Photos not shown in the grid. If > 0, the last photo shows "+N".
  final int morePhotosCount;

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
              for (var i = 0; i < imagePaths.length; i++)
                PhotoTile(
                  imagePath: imagePaths[i],
                  overlayLabel:
                      i == imagePaths.length - 1 && morePhotosCount > 0
                      ? '+$morePhotosCount'
                      : null,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
