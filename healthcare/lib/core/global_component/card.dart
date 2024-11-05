// lib/core/global_component/card.dart
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;

  const CustomCard({Key? key, required this.title, required this.subtitle, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
