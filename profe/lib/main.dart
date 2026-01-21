import 'package:flutter/material.dart';
import 'package:profe/presentation/features/splash/splash_screen.dart';

void main() async {
  
  runApp(MatuleApp());
}

class MatuleApp extends StatelessWidget {

  const MatuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        // '/auth': (context) => const AuthScreen(),
        // '/home': (context) => const HomeScreen(),
      },
    );
  }
}
