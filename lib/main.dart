import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namah_counter/core/theme/core-theme-app_theme.dart';
import 'package:namah_counter/presentation/pages/presentation-pages-landing_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: NamahApp(),
    ),
  );
}

class NamahApp extends StatelessWidget {
  const NamahApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namah - नमः',
      theme: AppTheme.lightTheme,
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
