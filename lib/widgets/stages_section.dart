import 'package:flutter/material.dart';
import 'package:camins/models/trail_stage.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/section_header.dart';
import 'package:camins/widgets/stage_tile.dart';

class StagesSection extends StatelessWidget {
  const StagesSection({super.key, required this.stages});

  final List<TrailStage> stages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppStyles.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: 'Etapes'),
          AppStyles.smallSeparator,
          for (var i = 0; i < stages.length; i++)
            StageTile(
              number: i + 1,
              stage: stages[i],
              isFirst: i == 0,
              isLast: i == stages.length - 1,
            ),
        ],
      ),
    );
  }
}
