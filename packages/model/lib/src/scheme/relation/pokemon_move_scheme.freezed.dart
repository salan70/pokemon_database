// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonMoveScheme {
  /// ポケモンの ID.
  int get pokemonId => throw _privateConstructorUsedError;

  /// 「わざ」の ID.
  int get moveId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonMoveSchemeCopyWith<PokemonMoveScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveSchemeCopyWith<$Res> {
  factory $PokemonMoveSchemeCopyWith(
          PokemonMoveScheme value, $Res Function(PokemonMoveScheme) then) =
      _$PokemonMoveSchemeCopyWithImpl<$Res, PokemonMoveScheme>;
  @useResult
  $Res call({int pokemonId, int moveId});
}

/// @nodoc
class _$PokemonMoveSchemeCopyWithImpl<$Res, $Val extends PokemonMoveScheme>
    implements $PokemonMoveSchemeCopyWith<$Res> {
  _$PokemonMoveSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? moveId = null,
  }) {
    return _then(_value.copyWith(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      moveId: null == moveId
          ? _value.moveId
          : moveId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonMoveSchemeImplCopyWith<$Res>
    implements $PokemonMoveSchemeCopyWith<$Res> {
  factory _$$PokemonMoveSchemeImplCopyWith(_$PokemonMoveSchemeImpl value,
          $Res Function(_$PokemonMoveSchemeImpl) then) =
      __$$PokemonMoveSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokemonId, int moveId});
}

/// @nodoc
class __$$PokemonMoveSchemeImplCopyWithImpl<$Res>
    extends _$PokemonMoveSchemeCopyWithImpl<$Res, _$PokemonMoveSchemeImpl>
    implements _$$PokemonMoveSchemeImplCopyWith<$Res> {
  __$$PokemonMoveSchemeImplCopyWithImpl(_$PokemonMoveSchemeImpl _value,
      $Res Function(_$PokemonMoveSchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? moveId = null,
  }) {
    return _then(_$PokemonMoveSchemeImpl(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      moveId: null == moveId
          ? _value.moveId
          : moveId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PokemonMoveSchemeImpl implements _PokemonMoveScheme {
  const _$PokemonMoveSchemeImpl(
      {required this.pokemonId, required this.moveId});

  /// ポケモンの ID.
  @override
  final int pokemonId;

  /// 「わざ」の ID.
  @override
  final int moveId;

  @override
  String toString() {
    return 'PokemonMoveScheme(pokemonId: $pokemonId, moveId: $moveId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMoveSchemeImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId) &&
            (identical(other.moveId, moveId) || other.moveId == moveId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemonId, moveId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMoveSchemeImplCopyWith<_$PokemonMoveSchemeImpl> get copyWith =>
      __$$PokemonMoveSchemeImplCopyWithImpl<_$PokemonMoveSchemeImpl>(
          this, _$identity);
}

abstract class _PokemonMoveScheme implements PokemonMoveScheme {
  const factory _PokemonMoveScheme(
      {required final int pokemonId,
      required final int moveId}) = _$PokemonMoveSchemeImpl;

  @override

  /// ポケモンの ID.
  int get pokemonId;
  @override

  /// 「わざ」の ID.
  int get moveId;
  @override
  @JsonKey(ignore: true)
  _$$PokemonMoveSchemeImplCopyWith<_$PokemonMoveSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
