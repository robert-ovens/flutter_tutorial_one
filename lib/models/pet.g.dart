// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pet extends Pet {
  @override
  final String name;

  factory _$Pet([void Function(PetBuilder)? updates]) =>
      (new PetBuilder()..update(updates))._build();

  _$Pet._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Pet', 'name');
  }

  @override
  Pet rebuild(void Function(PetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetBuilder toBuilder() => new PetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pet && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pet')..add('name', name)).toString();
  }
}

class PetBuilder implements Builder<Pet, PetBuilder> {
  _$Pet? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PetBuilder();

  PetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pet;
  }

  @override
  void update(void Function(PetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pet build() => _build();

  _$Pet _build() {
    final _$result = _$v ??
        new _$Pet._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'Pet', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
