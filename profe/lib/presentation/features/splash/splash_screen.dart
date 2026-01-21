

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      
      final prefs = await SharedPreferences.getInstance();
      final isAuthenticated = prefs.getString('auth_token') != null;
      
      if (context.mounted) {
        Navigator.pushReplacementNamed(
          context,
          isAuthenticated ? '/home' : '/login',
        );
      }
    });

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.accentInactive,
                AppColors.accent,
                AppColors.accentInactive
              ],
              
            )
          ),
          child: Text("Matule"),
        ),
      ),
    );
  }
}
