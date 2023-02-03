part of 'pets_list_bloc.dart';

enum PetsListStatus { initial, loading, ready }

@immutable
class PetsListState {
  final PetsListStatus status;
  final List<Pet> pets;

  const PetsListState({
    this.status = PetsListStatus.initial,
    this.pets = const <Pet>[],
  });

  PetsListState copyWith({
    PetsListStatus? status,
    List<Pet>? pets,
  }) {
    return PetsListState(
      status: status ?? this.status,
      pets: pets ?? this.pets,
    );
  }

  @override
  List<Object?> get props => [
        status,
        pets,
      ];
}
