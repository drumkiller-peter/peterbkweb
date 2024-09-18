import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/features/home/widgets/main_home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: BlocProvider(
        create: (context) => HomeBloc(),
        child: Builder(builder: (context) {
          return const Scaffold(
            body: MainHomeBody(),
          );
        }),
      ),
    );
  }
}
