import 'package:flutter/material.dart';
import 'package:camins/models/trail_stage.dart';
import 'package:camins/styles/app_styles.dart';

class StageTile extends StatelessWidget {
  const StageTile({
    super.key,
    required this.number,
    required this.stage,
    this.isFirst = false,
    this.isLast = false,
  });

  final int number;
  final TrailStage stage;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final circleRadius = AppStyles.stageCircleSize / 2;

    return SizedBox(
      height: AppStyles.stageRowHeight,
      child: Row(
        children: [
          SizedBox(
            width: AppStyles.stageCircleSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: isFirst ? AppStyles.stageRowHeight / 2 : 0,
                  bottom: isLast ? AppStyles.stageRowHeight / 2 : 0,
                  left: circleRadius - AppStyles.stageLineWidth / 2,
                  width: AppStyles.stageLineWidth,
                  child: Container(color: AppStyles.lightGreen),
                ),
                CircleAvatar(
                  radius: circleRadius,
                  backgroundColor: isLast
                      ? AppStyles.green
                      : AppStyles.lightGreen,
                  child: Text(
                    '$number',
                    style: AppStyles.stageNumber.copyWith(
                      color: isLast ? AppStyles.white : AppStyles.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppStyles.mediumSeparator,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(stage.name, style: AppStyles.statValue),
                AppStyles.tinySeparator,
                Text(stage.detail, style: AppStyles.smallText),
              ],
            ),
          ),
          Text(stage.time, style: AppStyles.stageTime),
        ],
      ),
    );
  }
}
