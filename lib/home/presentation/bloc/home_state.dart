part of 'home_bloc.dart';

enum HomeBlocStates { initial, loading, success, error }

@immutable
class HomeState {
  final HomeBlocStates status;
  final List<PlanEntity> payloadList;
  final List<PlanEntity> payloadSearchList;

  const HomeState({
    this.payloadList = const [],
    this.payloadSearchList = const [],
    required this.status,
  });
}
