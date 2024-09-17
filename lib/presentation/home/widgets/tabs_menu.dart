// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:peterbk/presentation/home/bloc/home_bloc.dart';
import 'package:peterbk/presentation/home/widgets/tabs_menu_item.dart';

class TabsMenu extends StatelessWidget {
  const TabsMenu({
    super.key,
    this.onPressedWork,
    this.onPressedHome,
  });

  final VoidCallback? onPressedWork;
  final VoidCallback? onPressedHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabsMenuItem(
          isSelected:
              context.watch<HomeBloc>().state.inViewEnum == InViewEnum.home,
          text: 'Home',
          // onPressed: () {
          //   context
          //       .read<HomeBloc>()
          //       .add(HomeEventInViewRequested(inViewEnum: InViewEnum.home));
          //   onPressedWork?.call();
          // },
          onPressed: onPressedHome,
        ),
        const Gap(85),
        TabsMenuItem(
          isSelected:
              context.watch<HomeBloc>().state.inViewEnum == InViewEnum.work,

          text: 'Work',
          // onPressed: () {
          //   context
          //       .read<HomeBloc>()
          //       .add(HomeEventInViewRequested(inViewEnum: InViewEnum.work));

          //   onPressedWork?.call();
          // },
          onPressed: onPressedWork,
        ),
      ],
    );
  }
}
