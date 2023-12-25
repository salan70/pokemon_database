// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypeScheme _$PokemonTypeSchemeFromJson(Map<String, dynamic> json) {
  return _PokemonTypeScheme.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeScheme {
  /// ポケモンの ID.
  int get pokemonId => throw _privateConstructorUsedError;

  /// タイプ。
  PokeType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeSchemeCopyWith<PokemonTypeScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeSchemeCopyWith<$Res> {
  factory $PokemonTypeSchemeCopyWith(
          PokemonTypeScheme value, $Res Function(PokemonTypeScheme) then) =
      _$PokemonTypeSchemeCopyWithImpl<$Res, PokemonTypeScheme>;
  @useResult
  $Res call({int pokemonId, PokeType type});
}

/// @nodoc
class _$PokemonTypeSchemeCopyWithImpl<$Res, $Val extends PokemonTypeScheme>
    implements $PokemonTypeSchemeCopyWith<$Res> {
  _$PokemonTypeSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeSchemeImplCopyWith<$Res>
    implements $PokemonTypeSchemeCopyWith<$Res> {
  factory _$$PokemonTypeSchemeImplCopyWith(_$PokemonTypeSchemeImpl value,
          $Res Function(_$PokemonTypeSchemeImpl) then) =
      __$$PokemonTypeSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokemonId, PokeType type});
}

/// @nodoc
class __$$PokemonTypeSchemeImplCopyWithImpl<$Res>
    extends _$PokemonTypeSchemeCopyWithImpl<$Res, _$PokemonTypeSchemeImpl>
    implements _$$PokemonTypeSchemeImplCopyWith<$Res> {
  __$$PokemonTypeSchemeImplCopyWithImpl(_$PokemonTypeSchemeImpl _value,
      $Res Function(_$PokemonTypeSchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeSchemeImpl(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeSchemeImpl implements _PokemonTypeScheme {
  const _$PokemonTypeSchemeImpl({required this.pokemonId, required this.type});

  factory _$PokemonTypeSchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeSchemeImplFromJson(json);

  /// ポケモンの ID.
  @override
  final int pokemonId;

  /// タイプ。
  @override
  final PokeType type;

  @override
  String toString() {
    return 'PokemonTypeScheme(pokemonId: $pokemonId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeSchemeImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemonId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeSchemeImplCopyWith<_$PokemonTypeSchemeImpl> get copyWith =>
      __$$PokemonTypeSchemeImplCopyWithImpl<_$PokemonTypeSchemeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeSchemeImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeScheme implements PokemonTypeScheme {
  const factory _PokemonTypeScheme(
      {required final int pokemonId,
      required final PokeType type}) = _$PokemonTypeSchemeImpl;

  factory _PokemonTypeScheme.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeSchemeImpl.fromJson;

  @override

  /// ポケモンの ID.
  int get pokemonId;
  @override

  /// タイプ。
  PokeType get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeSchemeImplCopyWith<_$PokemonTypeSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
