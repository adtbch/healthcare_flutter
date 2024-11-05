// lib/features/onboarding/screens/onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:healthcare/core/global_component/button.dart';
import 'package:healthcare/core/global_component/typografy.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background DNA Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dna.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text at the top right
              Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('M', style: AppTypography.h1(Colors.white)),
                        Text('Transforming',
                            style: AppTypography.h1(Colors.white)),
                        Text('Healthcare',
                            style: AppTypography.h1(Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Left Button - Sign In
                    CustomButton(
                      text: 'Sign In',
                      onPressed: () =>
                          Navigator.pushNamed(context, '/dashboard'),
                      backgroundColor:
                          Colors.grey[200]!, // Light grey background
                      arrowBGColor: Colors.white, // White background for arrow
                      icon: Icons.arrow_forward,
                      arrowcolor: Colors.black, // Black arrow color
                    ),
                    SizedBox(width: 10), // Space between buttons
                    // Right Button - Sign Up
                    CustomButton(
                      text: 'Sign Up',
                      onPressed: () =>
                          Navigator.pushNamed(context, '/dashboard'),
                      backgroundColor:
                          Colors.grey[200]!, // Light grey background
                      arrowBGColor: Colors.blue, // Blue background for arrow
                      textColor: Colors.black, // Black text
                      icon: Icons.arrow_forward,
                      arrowcolor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
