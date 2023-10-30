import 'package:bottom_bar_left_side/custom_bottom_bar/ui/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Web Bottom Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomNavigationScreen(),
    ),
  );
}
