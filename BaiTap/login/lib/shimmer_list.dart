// shimmer_list.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListPage extends StatelessWidget {
  const ShimmerListPage({super.key});

  Widget _buildItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Container(width: 40, height: 40, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 12, width: double.infinity, color: Colors.white),
                const SizedBox(height: 6),
                Container(height: 12, width: 150, color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer List")),
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (_, __) => _buildItem(),
        ),
      ),
    );
  }
}
