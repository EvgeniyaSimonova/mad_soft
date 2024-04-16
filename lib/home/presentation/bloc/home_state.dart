part of 'home_bloc.dart';

enum HomeBlocStates { initial, loading, success, error }

@immutable
class HomeState {
  final HomeBlocStates status;
  final List<CustomObject> payloadList;

  final List<CustomObject> payloadSearchList;

  const HomeState({
    this.payloadList = const [],
    this.payloadSearchList = const [],
    required this.status,
  });
}
