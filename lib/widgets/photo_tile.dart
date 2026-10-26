import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class PhotoTile extends StatelessWidget {
  const PhotoTile({super.key, required this.imagePath, this.overlayLabel});

  final String imagePath;
  final String? overlayLabel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppStyles.photoRadius),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          if (overlayLabel != null) ...[
            Container(color: AppStyles.photoOverlay),
            Center(
              child: Text(overlayLabel!, style: AppStyles.photoOverlayText),
            ),
          ],
        ],
      ),
    );
  }
}
