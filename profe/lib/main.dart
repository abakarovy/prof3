import 'package:flutter/material.dart';
import 'package:profe/presentation/features/auth/register/pages/register_screen.dart';
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
        '/register': (context) => const RegisterScreen(),
        // '/home': (context) => const HomeScreen(),
      },
    );
  }
}
