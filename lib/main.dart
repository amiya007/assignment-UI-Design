import 'package:flutter/material.dart';

import './screens/navigation_page.dart';

void main() {
  WidgetsFlutterBinding();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationPage(),
    );
  }
}
