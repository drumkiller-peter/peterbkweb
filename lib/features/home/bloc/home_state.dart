// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

enum InViewEnum {
  home,
  work,
}

enum HomeStateEnum {
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final InViewEnum? inViewEnum;
  final HomeStateEnum? homeStateEnum;
  final List<WorkModel>? workList;
  final String? error;

  const HomeState({
    this.inViewEnum = InViewEnum.home,
    this.homeStateEnum,
    this.workList,
    this.error,
  });

  @override
  List<Object?> get props => [
        inViewEnum,
        homeStateEnum,
        workList,
        error,
      ];

  HomeState copyWith({
    InViewEnum? inViewEnum,
    HomeStateEnum? homeStateEnum,
    List<WorkModel>? workList,
    String? error,
  }) {
    return HomeState(
      inViewEnum: inViewEnum ?? this.inViewEnum,
      homeStateEnum: homeStateEnum ?? this.homeStateEnum,
      workList: workList ?? this.workList,
      error: error ?? this.error,
    );
  }
}
