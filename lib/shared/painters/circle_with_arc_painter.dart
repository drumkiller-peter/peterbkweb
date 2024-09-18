import 'dart:math';

import 'package:flutter/material.dart';
import 'package:peterbk/configs/theme/app_colors.dart';

class CircleWithArcPainter extends CustomPainter {
  final double progress; // Progress value to rotate the arc
  CircleWithArcPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint arcPaint = Paint()
      ..color = AppColors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height / 2);

    // Calculate the angle for the rotating arc (it rotates full circle 2π)
    double startAngle = progress * 2 * pi;
    double sweepAngle = pi / 4; // The length of the small arc

    Rect rect = Rect.fromCircle(center: center, radius: radius);

    // Draw the small rotating arc
    canvas.drawArc(rect, startAngle, sweepAngle, false, arcPaint);

    // Now create the diminished border effect by drawing the full circle with gradient opacity
    Paint gradientCirclePaint = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    for (double i = 0; i < 2 * pi; i += 0.01) {
      // Change opacity based on how far the angle is from the arc's opposite side
      double opacityFactor = (1 - (cos(i - (startAngle + pi)))).clamp(0.1, 1.0);
      gradientCirclePaint.color = Colors.grey.withOpacity(opacityFactor);

      canvas.drawArc(
        rect,
        i,
        0.01, // Small sweep angle to create multiple small arcs for the full circle effect
        false,
        gradientCirclePaint,
      );
    }

    // Draw each planet with its own gradient
    _drawPlanetWithGradient(canvas, Offset(radius * 2.2, radius * 1.5), 27);
    _drawPlanetWithGradient(canvas, Offset(radius * 0.1, radius * 2), 27);
    _drawPlanetWithGradient(canvas, const Offset(pi * 0.4 / 2, 44), 27);
    _drawPlanetWithGradient(canvas, Offset(size.width, size.height * 0.1), 27);
  }

  void _drawPlanetWithGradient(Canvas canvas, Offset center, double radius) {
    // Create a localized Rect for each circle to define its own gradient
    Rect planetRect = Rect.fromCircle(center: center, radius: radius);

    Paint planetPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        transform: const GradientRotation(pi * 3.7),
        colors: [
          AppColors.blobColor1,
          AppColors.blobColor2.withOpacity(0.11),
        ],
      ).createShader(planetRect)
      ..style = PaintingStyle.fill;

    // Draw the planet (circle) with the gradient
    canvas.drawCircle(center, radius, planetPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Always repaint when animation progresses
  }
}
