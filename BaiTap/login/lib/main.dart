import 'package:flutter/material.dart';

import 'shimmer_card.dart';
import 'shimmer_list.dart';
import 'shimmer_feed.dart';
import 'shimmer_banner.dart';
import 'shimmer_home_screen.dart';

void main() {
  runApp(const ShimmerDemoApp());
}

class ShimmerDemoApp extends StatelessWidget {
  const ShimmerDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      {"title": "Shimmer Card", "page": const ShimmerCardPage()},
      {"title": "Shimmer List", "page": const ShimmerListPage()},
      {"title": "Shimmer Feed", "page": const ShimmerFeedPage()},
      {"title": "Shimmer Banner", "page": const ShimmerBannerPage()},
      {"title": "Shimmer Home Screen", "page": const ShimmerHomeScreenPage()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Shimmer Demo")),
      body: ListView.builder(
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => buttons[index]["page"] as Widget),
                );
              },
              child: Text(buttons[index]["title"] as String),
            ),
          );
        },
      ),
    );
  }
}
