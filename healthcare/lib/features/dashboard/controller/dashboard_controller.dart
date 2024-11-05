// lib/features/dashboard/controllers/dashboard_controller.dart
import 'package:flutter/material.dart';

class DashboardController extends ChangeNotifier {
  // Variable to track the active condition
  String _activeCondition = 'My Heart'; // Default active condition

  String get activeCondition => _activeCondition;

  // Method to update the active condition
  void setActiveCondition(String condition) {
    if (_activeCondition != condition) {
      _activeCondition = condition;
      notifyListeners();
    }
  }

  // Optional: Method to clear the active condition
  void clearActiveCondition() {
    _activeCondition = '';
    notifyListeners();
  }
}
