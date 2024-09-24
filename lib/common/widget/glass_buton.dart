import 'package:flutter/material.dart';
import 'dart:ui'; // For BackdropFilter

class GlassButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GlassButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
            border: Border.all(
              color: Colors.white.withOpacity(0.4), // Border color
              width: 2,
            ),
          ),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: const Size(160, 40),
              maximumSize: const Size(200, 40),
              backgroundColor: Colors.white.withOpacity(0.2),
            ),
            child: Center(
              child: Text(
                text,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
