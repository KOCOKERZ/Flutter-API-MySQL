import 'package:flutter/material.dart';
import 'bottomnav.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Aplikasi Digital Kampus',
          theme: ThemeData(
            primarySwatch: Colors.orange,
      ),
        home: BottomNav(),
        );
  }
}
