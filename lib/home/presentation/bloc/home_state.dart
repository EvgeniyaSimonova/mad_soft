part of 'home_bloc.dart';

enum HomeBlocStates { initial, loading, success, error }

@immutable
class HomeState {
  final HomeBlocStates status;
  final List<CustomObject> payloadList;

  const HomeState(this.payloadList, {required this.status});
}
