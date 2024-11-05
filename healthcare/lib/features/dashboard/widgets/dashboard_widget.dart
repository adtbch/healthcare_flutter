// lib/features/dashboard/widgets/dashboard_widget.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:healthcare/core/global_component/typografy.dart';

class DashboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Dashboard Widget');
  }

  static Widget ActionButton(IconData icon, {Color color = Colors.blue}) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: color, width: 4),
      ),
      child: Icon(icon, color: color, size: 20),
    );
  }

  static Widget buildActionButton(IconData icon, String label,
      {Color color = Colors.black, Color color2 = Colors.black}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(80),
        border: Border.all(color: color, width: 4),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Icon(icon, color: color2, size: 20),
            ),
          ),
          SizedBox(width: 10),
          Text(
            label,
            style: AppTypography.caption(color2),
          ),
        ],
      ),
    );
  }

  static Widget buildConditionItem(
      BuildContext context, String imagePath, String label,
      {bool isActive = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: () {
        if (isActive) {
          Navigator.pushNamed(
            context,
            '/health_detail',
            arguments: label, // Pass the condition label
          );
        } else if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Expanded(
                  child: Image.asset(imagePath, fit: BoxFit.fill),
                ),
              ],
            ),
            if (isActive)
              Positioned(
                bottom: 4,
                left: 8,
                right: 8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                label,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_outward,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
