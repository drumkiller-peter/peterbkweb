import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peterbk/configs/extensions/build_context_extension.dart';
import 'package:peterbk/configs/initializers/initialisers.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/features/home/pages/large_screen/ls_home_body.dart';
import 'package:peterbk/features/home/pages/small_screen/ss_home_body.dart';
import 'package:peterbk/features/home/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: BlocProvider(
        create: (context) =>
            getIt.get<HomeBloc>()..add(HomeEventFetchWorkDataRequested()),
        child: Builder(builder: (context) {
          return Scaffold(
            bottomNavigationBar: (context.isLargeMobile ||
                    context.isSmallMobile ||
                    context.isStandardMobile ||
                    context.isTablet)
                ? const BottomNavBar()
                : null,
            body: context.isDesktop ? const LSHomeBody() : const SSHomeBody(),
          );
        }),
      ),
    );
  }
}
