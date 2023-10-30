import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E2E48),
        title: const Text('Screen 3'),
      ),
      body: const Center(
        child: Text('Screen 3 Content'),
      ),
    );
  }
}
