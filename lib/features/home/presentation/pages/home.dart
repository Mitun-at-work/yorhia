import 'package:flutter/material.dart';

import '../widgets/home_product_carousel.dart';
import '../widgets/home_title_tile.dart';
import '../widgets/shop_available_announcement.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Welcome Mitun"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShopAnnouncement(),
            HomeTitleTile(
              tileHeading: "Shop With Us",
              function: () {},
            ),
            const HomeProductCarousel(),
          ],
        ),
      ),
    );
  }
}
