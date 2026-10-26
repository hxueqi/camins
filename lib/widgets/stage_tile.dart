import 'package:flutter/material.dart';
import 'package:camins/models/trail_stage.dart';
import 'package:camins/styles/app_styles.dart';

class StageTile extends StatelessWidget {
  const StageTile({
    super.key,
    required this.number,
    required this.stage,
    this.isHighlighted = false,
  });

  final int number;
  final TrailStage stage;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppStyles.stageRowHeight,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: AppStyles.stageCircleSize / 2,
          backgroundColor:
              isHighlighted ? AppStyles.green : AppStyles.lightGreen,
          child: Text(
            '$number',
            style: AppStyles.stageNumber.copyWith(
              color: isHighlighted ? AppStyles.white : AppStyles.green,
            ),
          ),
        ),
        title: Text(stage.name, style: AppStyles.statValue),
        subtitle: Text(stage.detail, style: AppStyles.smallText),
        trailing: Text(stage.time, style: AppStyles.stageTime),
      ),
    );
  }
}
