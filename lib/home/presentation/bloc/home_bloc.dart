import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:mad_soft/home/data/model/custom_object.dart';
import 'package:mad_soft/home/domain/repository/home_repo.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo)
      : super(
          const HomeState(
            status: HomeBlocStates.initial,
            [],
          ),
        ) {
    on<GetResponsePayloadList>(_getResponsePayloadList);
  }

  final IHomeRepo _homeRepo;

  FutureOr<void> _getResponsePayloadList(
    GetResponsePayloadList event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      const HomeState(
        status: HomeBlocStates.loading,
        [],
      ),
    );

    final responsePayloadModel = await _homeRepo.getResponsePayload();

    final responsePayloadList = responsePayloadModel.payload;

    emit(HomeState(
      status: HomeBlocStates.success,
      responsePayloadList,
    ));
  }
}
