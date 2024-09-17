// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:peterbk/configs/constants/app_constants.dart';
import 'package:peterbk/presentation/home/bloc/home_bloc.dart';
import 'package:peterbk/presentation/home/widgets/my_description.dart';
import 'package:peterbk/presentation/home/widgets/spiral_animation.dart';
import 'package:peterbk/presentation/home/widgets/tabs_menu.dart';
import 'package:peterbk/presentation/work/widgets/main_work_body.dart';

class HomeMainBody extends StatefulWidget {
  const HomeMainBody({
    super.key,
  });

  @override
  State<HomeMainBody> createState() => _HomeMainBodyState();
}

class _HomeMainBodyState extends State<HomeMainBody>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _workController;
  late Animation<Offset> _animation;
  late Animation<Offset> _workAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: animationDuration,
      vsync: this,
    );

    _workController = AnimationController(
      duration: animationDuration,
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(-0.7, 0.0),
    ).animate(_controller);

    _workAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: const Offset(0.0, 0.0),
    ).animate(_workController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _workController.dispose();
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
            clipBehavior: Clip.hardEdge,
            children: [
              AnimatedPositioned(
                top: height * 0.2.h,
                left: state.inViewEnum == InViewEnum.work
                    ? -width * 0.3.w
                    : width * 0.4.w,
                duration: animationDuration,
                child: const SpiralAnimationWidget(),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return SlideTransition(
                    position: _animation,
                    child: ScrollConfiguration(
                      behavior:
                          const ScrollBehavior().copyWith(overscroll: false),
                      child: Column(
                        children: [
                          Gap(height * 0.4),
                          Row(
                            children: [
                              const MyDescription(),
                              const Spacer(),
                              TabsMenu(
                                
                                onPressedHome: () {
                                  context.read<HomeBloc>().add(
                                      HomeEventInViewRequested(
                                          inViewEnum: InViewEnum.home));
                                  _workController.reverse();
                                  _controller.reverse();
                                },
                                onPressedWork: () {
                                  context.read<HomeBloc>().add(
                                      HomeEventInViewRequested(
                                          inViewEnum: InViewEnum.work));
                                  _controller.forward();
                                  _workController.forward();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Positioned.fill(
                left: width * 0.4.h,
                child: SlideTransition(
                    position: _workAnimation, child: const MainWorkBody()),
              ),
            ],
          ),
        );
      },
    );
  }
}
