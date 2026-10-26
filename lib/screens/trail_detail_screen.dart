import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';
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
        ],
      ),
      // bottomNavigationBar: aquí anirà la barra inferior
    );
  }
}
