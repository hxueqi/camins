import 'package:flutter/material.dart';
import 'package:camins/models/trail_tag.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/about_section.dart';
import 'package:camins/widgets/bottom_action_bar.dart';
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
          AppStyles.bigSeparator,
          // Zona 4: Sobre la ruta
          AboutSection(
            description:
                "Una volta circular pel cor del circ de Colomers, amb una "
                "desena d'estanys d'origen glacial. El camí està ben "
                'senyalitzat i la pujada és constant però sense trams '
                'tècnics. Ideal per a finals de primavera i estiu.',
            tags: [
              TrailTag(icon: Icons.loop, label: 'Circular'),
              TrailTag(icon: Icons.water, label: 'Estanys'),
              TrailTag(icon: Icons.pets, label: 'Gossos permesos'),
              TrailTag(icon: Icons.water_drop, label: "Font d'aigua"),
              TrailTag(icon: Icons.cabin, label: 'Refugi'),
            ],
          ),
          AppStyles.bigSeparator,
        ],
      ),
      // Zona 7: Barra inferior
      bottomNavigationBar: BottomActionBar(startingPoint: 'Banys de Tredòs'),
    );
  }
}
