import 'dart:io';

import 'package:flutter/material.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3));
      
      final prefs = await SharedPreferences.getInstance();
      final isAuthenticated = prefs.getString('auth_token') != null;
      
      if (context.mounted) {
        debugPrint(isAuthenticated.toString());
        Navigator.pushReplacementNamed(
          context,
          isAuthenticated ? '/home' : '/register',
        );
      }
    });

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.secondaryAccent,
                  AppColors.accent,
                  AppColors.accent,
                  AppColors.secondaryAccent
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.25, 0.75, 1.0]
              ),
              image: DecorationImage(
                image: FileImage(File("assets/images/splash_bg.png")),
                fit: BoxFit.cover
              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Matule",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppTexts.fontSizeTitle1,
                  ),
                )
              ],
            ),
          )
        ),
    );
  }
}
