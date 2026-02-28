import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/named_page.dart';
import 'screens/drawer_page.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/named': (context) => const NamedPage(),
        '/drawer': (context) => const DrawerPage(),
      },
    );
  }
}
