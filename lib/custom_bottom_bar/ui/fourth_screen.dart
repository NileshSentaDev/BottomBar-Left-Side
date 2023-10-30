import 'package:flutter/material.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E2E48),
        title: const Text('Screen 4'),
      ),
      body: const Center(
        child: Text('Screen 4 Content'),
      ),
    );
  }
}
