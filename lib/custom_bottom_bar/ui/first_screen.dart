import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF2E2E48),
        title: const Text('Screen 1'),
      ),
      body: const Center(
        child: Text('Screen 1 Content'),
      ),
    );
  }
}
