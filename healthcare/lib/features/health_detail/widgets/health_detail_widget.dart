// lib/features/health_detail/widgets/health_detail_widget.dart
import 'package:flutter/material.dart';

class HealthDetailWidget {
  // Method to build a placeholder for the graph
  static Widget buildGraphPlaceholder() {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          'Graph',
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  // Method to build each condition item
  static Widget buildConditionItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
    required Widget graph,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200], // White background for each item
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconColor
                  .withOpacity(0.1), // Light background based on icon color
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
          SizedBox(width: 16),
          // Title and Value
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Graph Placeholder
          graph,
          SizedBox(width: 16),
          // Status Button
          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Light gray background
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Now',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Heart Illustration Section
  static Widget heartIllustration() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light gray background
        borderRadius: BorderRadius.circular(40), // Rounded corners
      ),
      child: Stack(
        children: [
          // 3D Heart Image
          Center(
            child: Image.asset(
              'assets/images/heart.jpg', // Ensure this image exists
              height: 350,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
