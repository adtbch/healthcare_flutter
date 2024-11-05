// lib/core/utils/route_utils.dart
import 'package:flutter/material.dart';

class RouteUtils {
  static void navigateTo(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
