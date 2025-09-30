// shimmer_card.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerCardPage extends StatelessWidget {
  const ShimmerCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer Card")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 150, width: double.infinity, color: Colors.white),
              const SizedBox(height: 16),
              Container(height: 20, width: 200, color: Colors.white),
              const SizedBox(height: 8),
              Container(height: 20, width: 300, color: Colors.white),
              const SizedBox(height: 8),
              Container(height: 20, width: 150, color: Colors.white),
              const SizedBox(height: 16),
              Container(height: 40, width: double.infinity, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
