import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo_one/models/models.dart';
import 'package:meta/meta.dart';

part 'pets_list_event.dart';
part 'pets_list_state.dart';

class PetsListBloc extends Bloc<PetsListEvent, PetsListState> {
  PetsListBloc() : super(const PetsListState()) {
    on<PetsListInitialised>(_onPetListInitialise);
  }

  FutureOr<void> _onPetListInitialise(
    PetsListInitialised event,
    Emitter<PetsListState> emit,
  ) {}
}
