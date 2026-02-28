import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String returnedData = "Немає даних";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.4,
          colors: [Color(0xFF1B2735), Color(0xFF090A0F)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Space Routing"),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Повернуті дані: $returnedData"),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const DetailPage(message: "Привіт!"),
                    ),
                  );

                  setState(() {
                    returnedData = result ?? "Немає";
                  });
                },
                child: const Text("Перехід по класу"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/named');
                },
                child: const Text("Іменована навігація"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/drawer');
                },
                child: const Text("Nested Drawer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
