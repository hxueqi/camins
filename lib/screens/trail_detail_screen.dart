import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/stats_card.dart';
import 'package:camins/widgets/trail_header.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Zona 2: Títol
          TrailHeader(
            imagePath: 'assets/images/header.jpg',
            region: "Pirineu · Val d'Aran",
            title: 'Circuit dels Estanys de Colomers',
            rating: '4,8',
            reviewCount: 126,
          ),
          // Zona 3: Fitxa de dades
          Padding(
            padding: EdgeInsets.fromLTRB(
              AppStyles.cardMargin,
              AppStyles.cardMargin,
              AppStyles.cardMargin,
              0,
            ),
            child: StatsCard(
              distance: '9,4 km',
              elevation: '620 m',
              duration: '3 h 45',
              difficulty: 'Moderada',
            ),
          ),
        ],
      ),
      // bottomNavigationBar: aquí anirà la barra inferior
    );
  }
}
