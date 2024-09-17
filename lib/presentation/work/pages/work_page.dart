import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peterbk/configs/constants/app_constants.dart';
import 'package:peterbk/presentation/home/widgets/spiral_animation.dart';
import 'package:peterbk/presentation/home/widgets/tabs_menu.dart';
import 'package:peterbk/presentation/work/widgets/main_work_body.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        AnimatedPositioned(
          left: -width * 0.3.h,
          top: height * 0.2.h,
          duration: animationDuration,
          child: const SpiralAnimationWidget(),
        ),
        Positioned(
            left: height * 0.5.h, top: height * 0.5.h, child: const TabsMenu()),
        Positioned.fill(left: width * 0.4.h, child: const MainWorkBody()),
      ],
    );
  }
}
