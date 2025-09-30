// shimmer_banner.dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBannerPage extends StatelessWidget {
  const ShimmerBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer Banner")),
      body: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          children: [
            Container(height: 200, width: double.infinity, color: Colors.white),
            const SizedBox(height: 20),
            Container(height: 20, width: 250, color: Colors.white),
            const SizedBox(height: 10),
            Container(height: 20, width: 300, color: Colors.white),
            const SizedBox(height: 10),
            Container(height: 20, width: 200, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
