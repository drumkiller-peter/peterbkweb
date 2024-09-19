import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:peterbk/configs/initializers/initialisers.dart';
import 'package:peterbk/features/home/data/work_repository.dart';
import 'package:peterbk/features/home/models/work_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEventInViewRequested>((event, emit) {
      emit(state.copyWith(inViewEnum: event.inViewEnum));
    });

    on<HomeEventFetchWorkDataRequested>((event, emit) async {
      try {
        emit(state.copyWith(homeStateEnum: HomeStateEnum.loading));
        final res = await _workRepository.getWorkList();
        emit(state.copyWith(
          homeStateEnum: HomeStateEnum.loaded,
          workList: res,
        ));
      } catch (e) {
        emit(
          state.copyWith(
            homeStateEnum: HomeStateEnum.error,
            error: e.toString(),
          ),
        );
      }
    });
  }

  final IWorkRepository _workRepository = getIt.get<IWorkRepository>();
}
