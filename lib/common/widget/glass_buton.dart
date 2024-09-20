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
    const double minWidth = 160;
    const double minHeight = 40;
    const double maxHeight = 64;
    const double radius = 20;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: const Size(minWidth, minHeight),
        maximumSize: const Size(double.infinity, maxHeight),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            constraints: const BoxConstraints(
              minWidth: minWidth,
              minHeight: minHeight,
              maxHeight: maxHeight,
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color:
                  Colors.white.withOpacity(0.2), // Semi-transparent background
              border: Border.all(
                color: Colors.white.withOpacity(0.3), // Border color
                width: 2,
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ClipRRect(
//       borderRadius: BorderRadius.circular(20.0),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//         child: Container(
//           constraints: const BoxConstraints(minWidth: 160, minHeight: 40),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.white.withOpacity(0.2), // Semi-transparent background
//             border: Border.all(
//               color: Colors.white.withOpacity(0.3), // Border color
//               width: 2,
//             ),
//           ),
//           child: TextButton(
//             onPressed: onPressed,
//             style: TextButton.styleFrom(
//               foregroundColor: Colors.white,
//               minimumSize: const Size(160, 40),
//             ),
//             child: Center(
//               child: Text(
//                 text,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
