part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class GetPayloadListEvent extends HomeEvent {}

class SearchEvent extends HomeEvent {
  final String query;
  SearchEvent({required this.query});
}
