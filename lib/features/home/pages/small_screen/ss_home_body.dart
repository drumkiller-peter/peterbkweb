// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peterbk/configs/constants/app_constants.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/theme/app_colors.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/features/home/pages/small_screen/ss_work_body.dart';
import 'package:peterbk/features/home/widgets/my_description.dart';
import 'package:peterbk/features/home/widgets/spiral_animation.dart';

class SSHomeBody extends StatefulWidget {
  const SSHomeBody({
    super.key,
    required this.controller,
    required this.workController,
    required this.animation,
    required this.workAnimation,
  });

  final AnimationController controller;
  final AnimationController workController;
  final Animation<Offset> animation;
  final Animation<Offset> workAnimation;

  @override
  State<SSHomeBody> createState() => _SSHomeBodyState();
}

class _SSHomeBodyState extends State<SSHomeBody> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.isMobile) {
        widget.workController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;

        return SizedBox(
          height: height,
          width: width,
          child: Stack(
            // clipBehavior: Clip.hardEdge,
            children: [
              AnimatedPositioned(
                top: height < 600 ? 50 : 200,
                left:
                    state.inViewEnum == InViewEnum.work ? -width * 0.25.w : 100,
                duration: animationDuration,
                child: SpiralAnimationWidget(
                  size: Size(300.w, 300.h),
                ),
              ),
              AnimatedBuilder(
                animation: widget.controller,
                builder: (context, child) {
                  return AnimatedOpacity(
                    duration: animationDuration,
                    opacity: state.inViewEnum == InViewEnum.home ? 1.0 : 0.0,
                    child: SlideTransition(
                      position: widget.animation,
                      child: MyDescription(
                        screenPadding: EdgeInsets.only(
                          left: 16.w,
                          top: kToolbarHeight * 3,
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     const MyDescription(),
                      //     const Spacer(),
                      //     TabsMenu(
                      //       onPressedHome: () {
                      //         context.read<HomeBloc>().add(
                      //             HomeEventInViewRequested(
                      //                 inViewEnum: InViewEnum.home));
                      //         _workController.reverse();
                      //         _controller.reverse();
                      //       },
                      //       onPressedWork: () {
                      //         context.read<HomeBloc>().add(
                      //             HomeEventInViewRequested(
                      //                 inViewEnum: InViewEnum.work));
                      //         _controller.forward();
                      //         _workController.forward();
                      //       },
                      //     ),
                      //   ],
                      // ),
                    ),
                  );
                },
              ),
              // const Positioned.fill(child: SSWorkBody()),
              if (state.inViewEnum == InViewEnum.work)
                Positioned.fill(
                  child: AnimatedContainer(
                    duration: animationDuration,
                    color: state.inViewEnum == InViewEnum.work
                        ? AppColors.secondaryColor
                        : Colors.transparent,
                    child: AnimatedOpacity(
                      duration: animationDuration,
                      opacity: state.inViewEnum == InViewEnum.work ? 1.0 : 0.0,
                      child: SlideTransition(
                        position: widget.workAnimation,
                        child: const SSWorkBody(),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
