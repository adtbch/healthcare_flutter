// lib/features/health_detail/screens/health_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:healthcare/core/global_component/typografy.dart';
import 'package:healthcare/features/health_detail/widgets/health_detail_widget.dart'; // Import the widgets

class HealthDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the condition passed via arguments if needed
    final args = ModalRoute.of(context)?.settings.arguments;
    final conditionLabel = args is String ? args : 'My Heart';

    return Scaffold(
      backgroundColor:
          Colors.white, // Set the entire Scaffold background to white
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Removes the shadow below the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          conditionLabel,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Centers the title
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(
                  context, '/settings'); // Ensure this route is defined
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Heart Illustration Section
              HealthDetailWidget.heartIllustration(),
              SizedBox(height: 20),
              // "Your condition" Title
              Align(
                alignment: Alignment.center,
                child: Text('Your Condition',
                    style: AppTypography.body(Colors.black)),
              ),
              SizedBox(height: 20),
              // Health Parameters List
              Column(
                children: [
                  HealthDetailWidget.buildConditionItem(
                    icon: Icons.favorite_border,
                    iconColor: Colors.blue,
                    title: 'Heart Rate',
                    value: '120 bpm',
                    graph: HealthDetailWidget.buildGraphPlaceholder(),
                  ),
                  HealthDetailWidget.buildConditionItem(
                    icon: Icons.opacity,
                    iconColor: Colors.grey,
                    title: 'Blood Status',
                    value: '116/70',
                    graph: HealthDetailWidget.buildGraphPlaceholder(),
                  ),
                  HealthDetailWidget.buildConditionItem(
                    icon: Icons.bloodtype,
                    iconColor: Colors.grey,
                    title: 'Blood Count',
                    value: '80-90',
                    graph: HealthDetailWidget.buildGraphPlaceholder(),
                  ),
                  HealthDetailWidget.buildConditionItem(
                    icon: Icons.local_drink,
                    iconColor: Colors.grey,
                    title: 'Glucose Level',
                    value: '9,000 mg/dL',
                    graph: HealthDetailWidget.buildGraphPlaceholder(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
