import 'package:get_it/get_it.dart';
import 'package:peterbk/features/home/bloc/home_bloc.dart';
import 'package:peterbk/features/home/data/work_repository.dart';

final getIt = GetIt.instance;

void initServices() {
  GetIt.I.registerSingleton<IWorkRepository>(WorkRepository());
  GetIt.I.registerSingleton<HomeBloc>(HomeBloc());
}
