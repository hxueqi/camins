import 'package:flutter/material.dart';
import 'package:camins/styles/app_styles.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Aquí aniran les zones, de dalt a baix
        ],
      ),
      // bottomNavigationBar: aquí anirà la barra inferior
    );
  }
}
