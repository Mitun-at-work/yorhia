import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/home/presentation/controller/page_controller.dart';

buildBottomNavigationButton() {
  return GetBuilder<ScreenController>(builder: (controller) {
    return BottomNavigationBar(
      onTap: (value) => controller.switchPage(value),
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.pageIdx.value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.history_outlined),
          icon: Icon(Icons.history_outlined),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "Profile",
        )
      ],
    );
  });
}
