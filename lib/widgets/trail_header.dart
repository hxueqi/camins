import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class TrailHeader extends StatelessWidget {
  const TrailHeader({
    super.key,
    required this.imagePath,
    required this.region,
    required this.title,
    required this.rating,
    required this.reviewCount,
  });

  final String imagePath;
  final String region;
  final String title;
  final String rating;
  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppStyles.headerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black87],
                stops: [0.3, 1.0],
              ),
            ),
          ),
          Positioned(
            left: AppStyles.horizontalPadding,
            right: AppStyles.horizontalPadding,
            bottom: AppStyles.horizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppStyles.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(region.toUpperCase(), style: AppStyles.regionBadge),
                ),
                AppStyles.smallSeparator,
                Text(title, style: AppStyles.trailTitle),
                AppStyles.smallSeparator,
                Row(
                  children: [
                    Icon(Icons.star, color: AppStyles.orange, size: 20),
                    AppStyles.tinySeparator,
                    Text(rating, style: AppStyles.ratingValue),
                    AppStyles.tinySeparator,
                    Text('($reviewCount opinions)', style: AppStyles.ratingCount),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
