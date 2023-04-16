import 'package:flutter/material.dart';
import 'package:yoriha/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 180,
                color: Colors.amber,
              ),
              // const ProfileTile(),
            ],
          ),
        ),
      ),
    );
  }
}
