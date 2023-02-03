import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'pet.g.dart';

abstract class Pet implements Built<Pet, PetBuilder> {
  String get name;

  Pet._();
  factory Pet([void Function(PetBuilder) updates]) = _$Pet;
}
