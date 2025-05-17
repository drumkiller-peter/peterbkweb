import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peterbk/configs/constants/app_constants.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/initializers/initialisers.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/features/home/pages/large_screen/ls_home_body.dart';
import 'package:peterbk/features/home/pages/small_screen/ss_home_body.dart';
import 'package:peterbk/features/home/widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
      end: const Offset(-0.8, 0.0),
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
    return SelectionArea(
      child: BlocProvider(
        create: (context) =>
            getIt.get<HomeBloc>()..add(HomeEventFetchWorkDataRequested()),
        child: Builder(builder: (context) {
          return Scaffold(
            bottomNavigationBar: context.isMobile
                ? BottomNavBar(
                    onTap: (index) {
                      if (index == 0) {
                        context.read<HomeBloc>().add(HomeEventInViewRequested(
                            inViewEnum: InViewEnum.home));
                        _workController.reverse();
                        _controller.reverse();
                      } else {
                        context.read<HomeBloc>().add(HomeEventInViewRequested(
                            inViewEnum: InViewEnum.work));
                        _controller.forward();
                        _workController.forward();
                      }
                    },
                  )
                : null,
            body: context.isCommonDesktop || context.isTablet
                ? const LSHomeBody()
                : SSHomeBody(
                    controller: _controller,
                    animation: _animation,
                    workController: _workController,
                    workAnimation: _workAnimation,
                  ),
          );
        }),
      ),
    );
  }
}
