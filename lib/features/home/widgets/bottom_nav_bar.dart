import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      },
    );
  }
}
