import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String message;

  const DetailPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Дані повернуті!");
              },
              child: const Text("Повернутися з даними"),
            ),
          ],
        ),
      ),
    );
  }
}
