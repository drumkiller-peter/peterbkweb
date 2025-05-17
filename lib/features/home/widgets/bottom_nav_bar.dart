// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peterbk/configs/theme/app_colors.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.onTap,
  });

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.secondaryColor,
      unselectedItemColor: AppColors.textDisabled,
      selectedFontSize: 20.sp,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: 'Work',
        ),
      ],
      currentIndex: context.watch<HomeBloc>().state.inViewEnum!.index,
      onTap: (index) {
        context.read<HomeBloc>().add(
              HomeEventInViewRequested(
                inViewEnum: InViewEnum.values[index],
              ),
            );

        onTap(index);
      },
    );
  }
}
