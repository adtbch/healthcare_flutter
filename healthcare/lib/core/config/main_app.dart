// lib/core/config/main_app.dart
import 'package:flutter/material.dart';
import 'package:healthcare/features/dashboard/screens/dashboard_screen.dart';
import 'package:healthcare/features/onboarding/screens/onboarding_screen.dart';
import 'package:healthcare/features/health_detail/screens/health_detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/health_detail': (context) => HealthDetailScreen(),
      },
    );
  }
}
