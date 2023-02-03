import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_one/models/models.dart';
import 'package:demo_one/services/services.dart';
import 'package:meta/meta.dart';

part 'pets_list_event.dart';
part 'pets_list_state.dart';

class PetsListBloc extends Bloc<PetsListEvent, PetsListState> {
  final PetsService _petsService;
  PetsListBloc({
    required PetsService petsService,
  })  : _petsService = petsService,
        super(
          const PetsListState(),
        ) {
    on<PetsListInitialised>(_onPetListInitialise);
  }

  FutureOr<void> _onPetListInitialise(
    PetsListInitialised event,
    Emitter<PetsListState> emit,
  ) async {
    emit(state.copyWith(status: PetsListStatus.loading));
    emit(
      state.copyWith(
        status: PetsListStatus.ready,
        pets: await _petsService.getPets(),
      ),
    );
  }
}
