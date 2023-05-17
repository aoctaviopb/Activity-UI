import 'package:activity_ui/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity UI',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
