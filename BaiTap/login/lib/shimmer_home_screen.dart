// shimmer_home_screen.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHomeScreenPage extends StatelessWidget {
  const ShimmerHomeScreenPage({super.key});

  Widget _buildAppIcon() {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(height: 6),
        Container(height: 10, width: 40, color: Colors.white),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer Home Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: List.generate(16, (_) => _buildAppIcon()),
          ),
        ),
      ),
    );
  }
}
