part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({
    @Default([]) List<PlanEntity> payloadList,
    @Default([]) List<PlanEntity> payloadSearchList,
  }) = IdleHomeState;

  const factory HomeState.loading({
    @Default([]) List<PlanEntity> payloadList,
    @Default([]) List<PlanEntity> payloadSearchList,
  }) = LoadingHomeState;

  const factory HomeState.success({
    required List<PlanEntity> payloadList,
    required List<PlanEntity> payloadSearchList,
  }) = SuccessHomeState;

  const factory HomeState.error({
    @Default([]) List<PlanEntity> payloadList,
    @Default([]) List<PlanEntity> payloadSearchList,
  }) = ErrorHomeState;
}
