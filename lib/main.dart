import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const SneakerApp());
}

class SneakerApp extends StatelessWidget {
  const SneakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sneaker App',
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(),
        useMaterial3: true,
      ),
      home: IntroPage(),
    );
  }
}
