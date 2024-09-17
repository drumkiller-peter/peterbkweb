import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peterbk/presentation/home/bloc/home_bloc.dart';
import 'package:peterbk/presentation/home/widgets/home_main_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              // return state.inViewEnum == InViewEnum.work
              //     ? const WorkPage()
              //     : const HomeMainBody();
              return const HomeMainBody();
            },
          ),
        );
      }),
    );
  }
}
