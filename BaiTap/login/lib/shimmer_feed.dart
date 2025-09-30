// shimmer_feed.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFeedPage extends StatelessWidget {
  const ShimmerFeedPage({super.key});

  Widget _buildPost() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 40, height: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white)),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 100, height: 12, color: Colors.white),
                  const SizedBox(height: 6),
                  Container(width: 60, height: 12, color: Colors.white),
                ],
              )
            ],
          ),
          const SizedBox(height: 12),
          Container(height: 200, width: double.infinity, color: Colors.white),
          const SizedBox(height: 12),
          Container(height: 12, width: 250, color: Colors.white),
          const SizedBox(height: 6),
          Container(height: 12, width: 150, color: Colors.white),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer Feed")),
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (_, __) => _buildPost(),
        ),
      ),
    );
  }
}
