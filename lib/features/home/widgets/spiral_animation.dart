// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peterbk/configs/theme/app_colors.dart';
import 'package:peterbk/shared/painters/circle_with_arc_painter.dart';

class SpiralAnimationWidget extends StatefulWidget {
  const SpiralAnimationWidget({
    super.key,
  });

  @override
  State<SpiralAnimationWidget> createState() => _SpiralAnimationWidgetState();
}

class _SpiralAnimationWidgetState extends State<SpiralAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final blobWidth = MediaQuery.of(context).size.width * 0.4.w;
          return CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: CircleWithArcPainter(_controller.value),
            child: Container(
              margin: EdgeInsets.all(160.r),
              width: blobWidth,
              height: blobWidth,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.blobColor1,
                    AppColors.blobColor2.withOpacity(0.11),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
