import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const AnimeStudioApp());
}

class AnimeStudioApp extends StatelessWidget {
  const AnimeStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Anime Studio",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}
