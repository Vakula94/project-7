import 'package:flutter/material.dart';

class NamedPage extends StatelessWidget {
  const NamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Named Route")),
      body: const Center(
        child: Text("Це іменована навігація", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
