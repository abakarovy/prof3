import 'package:flutter/material.dart';
import 'package:profe/presentation/features/auth/register/pages/create_code_screen.dart';
import 'package:profe/presentation/features/auth/register/pages/password_create_screen.dart';
import 'package:profe/presentation/features/auth/register/pages/register_screen.dart';
import 'package:profe/presentation/features/auth/login/pages/login_screen.dart';
import 'package:profe/presentation/features/splash/splash_screen.dart';
import 'package:profe/presentation/uikit/app_theme.dart';

void main() async {
  
  runApp(MatuleApp());
}

class MatuleApp extends StatelessWidget {

  const MatuleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      theme: AppTheme.lightTheme,
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/createPassword': (context) => const PasswordCreateScreen(),
        '/createCode': (context) => const CreateCodeScreen(),
        // '/home': (context) => const HomeScreen(),
      },
    );
  }
}
