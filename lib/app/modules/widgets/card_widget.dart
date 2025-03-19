import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Card Content
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[200]!,
                Colors.blue[300]!,
                Colors.blue[400]!,
                Colors.blue[500]!,
                Colors.blue[600]!,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
        // Background SVG
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/images/texture-1.svg',
            fit: BoxFit.cover, // Adjust how the image is displayed
          ),
        ),
      ],
    );
  }
}
