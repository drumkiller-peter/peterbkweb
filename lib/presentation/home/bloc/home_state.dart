// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

enum InViewEnum {
  home,
  work,
}

class HomeState extends Equatable {
  final InViewEnum? inViewEnum;
  const HomeState({
    this.inViewEnum = InViewEnum.home,
  });

  @override
  List<Object?> get props => [
        inViewEnum,
      ];

  HomeState copyWith({
    InViewEnum? inViewEnum,
  }) {
    return HomeState(
      inViewEnum: inViewEnum ?? this.inViewEnum,
    );
  }
}
