import 'package:flutter/material.dart';
import 'package:quizzada/ui/auth/screens/splash_screen.dart';
import 'package:quizzada/ui/core/themes/app_theme.dart';
import 'package:quizzada/ui/gallery/gallery_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzada',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      //home: const SplashScreen(),
      home: const GalleryScreen(),
    );
  }
}