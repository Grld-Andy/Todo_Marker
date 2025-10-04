import 'package:flutter/material.dart';
import 'package:task_marker/features/onboarding/presentation/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Marker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow[700]!,
          primary: const Color(0xFFFFC107), // yellow
          secondary: const Color(0xFF64B5F6), // sky blue
          surface: const Color(0xFFFFFDE7), // light cream
          onPrimary: Colors.black,
          onSecondary: Colors.white,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFFDE7),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF212121)),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121),
          ),
        ),
      ),
      home: const IntroPage(),
    );
  }
}
