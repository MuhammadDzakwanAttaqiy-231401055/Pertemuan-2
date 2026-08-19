import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  // Widget ini membutuhkan widget lain untuk ditampilkan di atasnya (child)
  const GradientBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Kita gunakan Container sebagai dasarnya
    return Container(
      // Properti decoration untuk styling visual
      decoration: const BoxDecoration(
        // Definisikan gradien linear
        gradient: LinearGradient(
          colors: [
            Color(0xFF1D1D2E), // Warna awal
            Color(0xFF25254D), // Warna akhir
          ],
          begin: Alignment.topLeft, // Arah mulai gradien
          end: Alignment.bottomRight, // Arah akhir gradien
        ), // LinearGradient
      ), // BoxDecoration
      // Tampilkan widget child di atas Container yang sudah bergradien
      child: child,
    ); // Container
  }
}