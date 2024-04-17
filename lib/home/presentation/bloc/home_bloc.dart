import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mad_soft/home/data/model/plan_entity.dart';
import 'package:mad_soft/home/domain/repository/home_repo.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo) : super(const HomeState.idle()) {
    on<GetPayloadListEvent>(_getResponsePayloadList);
    on<SearchEvent>(_searchEvent);
  }

  final IHomeRepo _homeRepo;

  FutureOr<void> _getResponsePayloadList(
    GetPayloadListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      HomeState.loading(
        payloadList: state.payloadList,
        payloadSearchList: state.payloadSearchList,
      ),
    );

    final responsePayloadModel = await _homeRepo.getResponsePayload();

    final responsePayloadList = responsePayloadModel.plans;

    emit(
      HomeState.success(
        payloadList: responsePayloadList,
        payloadSearchList: responsePayloadList,
      ),
    );
  }

  FutureOr<void> _searchEvent(
    SearchEvent event,
    Emitter<HomeState> emit,
  ) async {
    final responsePayloadList = state.payloadList.toList();
    final filteredList = responsePayloadList
        .where((element) => element.title.toLowerCase().contains(event.query))
        .toList();

    emit(
      state.copyWith(
        payloadSearchList:
            event.query.isEmpty ? responsePayloadList : filteredList,
      ),
    );
  }
}
