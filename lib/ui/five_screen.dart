import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  const FiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 5'),
      ),
      body: const Center(
        child: Text('Screen 5 Content'),
      ),
    );
  }
}
