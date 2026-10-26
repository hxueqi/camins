import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/stat_item.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    required this.distance,
    required this.elevation,
    required this.duration,
    required this.difficulty,
  });

  final String distance;
  final String elevation;
  final String duration;
  final String difficulty;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppStyles.white,
      margin: EdgeInsets.zero,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: AppStyles.statsCardHeight,
        child: Row(
          children: [
            Expanded(
              child: StatItem(
                icon: Icons.route,
                value: distance,
                label: 'Distància',
              ),
            ),
            _divider(),
            Expanded(
              child: StatItem(
                icon: Icons.trending_up,
                value: elevation,
                label: 'Desnivell',
              ),
            ),
            _divider(),
            Expanded(
              child: StatItem(
                icon: Icons.schedule,
                value: duration,
                label: 'Durada',
              ),
            ),
            _divider(),
            Expanded(
              child: StatItem(
                icon: Icons.terrain,
                value: difficulty,
                label: 'Dificultat',
                iconColor: AppStyles.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return VerticalDivider(
      width: 1,
      thickness: 1,
      indent: 20,
      endIndent: 20,
      color: AppStyles.divider,
    );
  }
}
