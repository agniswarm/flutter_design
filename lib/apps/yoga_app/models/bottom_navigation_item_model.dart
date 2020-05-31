import 'package:design_practice/icons/yoga_app_icons_icons.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem {
  IconData icon;
  String text;
  bool isActive;
  BottomNavigationItem({
    this.icon,
    this.text,
    this.isActive,
  });
}

List<BottomNavigationItem> bottomNavigationItem = [
  BottomNavigationItem(
    icon: YogaAppIcons.meditation,
    text: 'Yoga',
    isActive: true,
  ),
  BottomNavigationItem(
    icon: YogaAppIcons.saturn,
    text: 'Meditation',
    isActive: false,
  ),
  BottomNavigationItem(
    icon: YogaAppIcons.avocado,
    text: 'Food',
    isActive: false,
  ),
  BottomNavigationItem(
    icon: YogaAppIcons.smile,
    text: 'Profile',
    isActive: false,
  ),
];
