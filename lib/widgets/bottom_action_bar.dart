import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({super.key, required this.startingPoint});

  final String startingPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyles.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppStyles.horizontalPadding,
            vertical: 12,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Punt de sortida', style: AppStyles.smallText),
                    Text(startingPoint, style: AppStyles.statValue),
                  ],
                ),
              ),
              SizedBox(
                width: AppStyles.buttonHeight,
                height: AppStyles.buttonHeight,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    foregroundColor: AppStyles.darkText,
                    side: BorderSide(color: AppStyles.divider),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppStyles.buttonRadius,
                      ),
                    ),
                  ),
                  child: Icon(Icons.download),
                ),
              ),
              AppStyles.smallSeparator,
              SizedBox(
                height: AppStyles.buttonHeight,
                child: FilledButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.navigation),
                  label: Text('Començar', style: AppStyles.buttonText),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppStyles.green,
                    foregroundColor: AppStyles.white,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppStyles.buttonRadius,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
