// lib/core/global_component/button.dart
import 'package:flutter/material.dart';
import 'package:healthcare/core/global_component/typografy.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color arrowcolor;
  final Color arrowBGColor;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.grey,
    this.textColor = Colors.black,
    this.arrowcolor = Colors.blue,
    this.arrowBGColor = Colors.grey,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.white, width: 6), // Bentuk oval
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.max, // Mengatur ukuran Row sesuai konten
            children: [
              Text(
                text,
                style: AppTypography.caption(textColor),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: arrowBGColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical:
                        10), // Menambahkan padding agar ikon tidak terlalu mepet
                child: Transform.rotate(
                  angle: -0.7854, // Memutar ikon ke arah kanan atas
                  child: Icon(icon, color: arrowcolor, size: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
