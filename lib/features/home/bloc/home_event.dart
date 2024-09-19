// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract interface class HomeEvent {}

class HomeEventInViewRequested extends HomeEvent {
  final InViewEnum inViewEnum;

  HomeEventInViewRequested({
    required this.inViewEnum,
  });
}

class HomeEventFetchWorkDataRequested extends HomeEvent {}
