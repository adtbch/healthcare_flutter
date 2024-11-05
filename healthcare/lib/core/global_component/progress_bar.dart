// lib/core/global_component/progress_bar.dart
import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double progress;

  const CustomProgressBar({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey[200],
      color: Colors.blue,
    );
  }
}
