import 'package:flutter/material.dart';
import 'package:yoriha/components/setting/setting_card.dart';
import 'package:yoriha/theme/colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          SettingSub(title: "Account"),
          SettingTile(
            title: "Mitun Suresh",
            icon: Icons.person,
            theme: "Yellow",
          ),
          SettingSub(title: "Preferences"),
          SettingTile(
            title: "Language",
            icon: Icons.language,
            theme: "Orange",
          ),
          SettingTile(
            title: "Mitun Suresh",
            icon: Icons.notifications_outlined,
            theme: "Voilet",
          ),
          SettingTile(
            title: "Dark Mode",
            icon: Icons.nightlight_round_outlined,
            theme: "Blue",
          ),
          SettingTile(
            title: "Help",
            icon: Icons.help_outline_outlined,
            theme: "Rose",
          ),
        ],
      ),
    );
  }
}

class SettingSub extends StatelessWidget {
  const SettingSub({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10,
        bottom: 25,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: lightText,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: const Text(
        "Settings",
        style: TextStyle(
          color: lightText,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
