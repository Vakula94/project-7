import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Navigation")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.black],
                ),
              ),
              child: Text("Space Menu"),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text("Named Page"),
              onTap: () {
                Navigator.pushNamed(context, '/named');
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text("Nested Navigation через Drawer")),
    );
  }
}
