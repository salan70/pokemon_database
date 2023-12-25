// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonAbilityScheme _$PokemonAbilitySchemeFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityScheme.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityScheme {
  /// ポケモンの ID.
  int get pokemonId => throw _privateConstructorUsedError;

  /// 「とくせい」の ID.
  int get abilityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonAbilitySchemeCopyWith<PokemonAbilityScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilitySchemeCopyWith<$Res> {
  factory $PokemonAbilitySchemeCopyWith(PokemonAbilityScheme value,
          $Res Function(PokemonAbilityScheme) then) =
      _$PokemonAbilitySchemeCopyWithImpl<$Res, PokemonAbilityScheme>;
  @useResult
  $Res call({int pokemonId, int abilityId});
}

/// @nodoc
class _$PokemonAbilitySchemeCopyWithImpl<$Res,
        $Val extends PokemonAbilityScheme>
    implements $PokemonAbilitySchemeCopyWith<$Res> {
  _$PokemonAbilitySchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? abilityId = null,
  }) {
    return _then(_value.copyWith(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: null == abilityId
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonAbilitySchemeImplCopyWith<$Res>
    implements $PokemonAbilitySchemeCopyWith<$Res> {
  factory _$$PokemonAbilitySchemeImplCopyWith(_$PokemonAbilitySchemeImpl value,
          $Res Function(_$PokemonAbilitySchemeImpl) then) =
      __$$PokemonAbilitySchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokemonId, int abilityId});
}

/// @nodoc
class __$$PokemonAbilitySchemeImplCopyWithImpl<$Res>
    extends _$PokemonAbilitySchemeCopyWithImpl<$Res, _$PokemonAbilitySchemeImpl>
    implements _$$PokemonAbilitySchemeImplCopyWith<$Res> {
  __$$PokemonAbilitySchemeImplCopyWithImpl(_$PokemonAbilitySchemeImpl _value,
      $Res Function(_$PokemonAbilitySchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? abilityId = null,
  }) {
    return _then(_$PokemonAbilitySchemeImpl(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: null == abilityId
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilitySchemeImpl implements _PokemonAbilityScheme {
  const _$PokemonAbilitySchemeImpl(
      {required this.pokemonId, required this.abilityId});

  factory _$PokemonAbilitySchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilitySchemeImplFromJson(json);

  /// ポケモンの ID.
  @override
  final int pokemonId;

  /// 「とくせい」の ID.
  @override
  final int abilityId;

  @override
  String toString() {
    return 'PokemonAbilityScheme(pokemonId: $pokemonId, abilityId: $abilityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilitySchemeImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId) &&
            (identical(other.abilityId, abilityId) ||
                other.abilityId == abilityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemonId, abilityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilitySchemeImplCopyWith<_$PokemonAbilitySchemeImpl>
      get copyWith =>
          __$$PokemonAbilitySchemeImplCopyWithImpl<_$PokemonAbilitySchemeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilitySchemeImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityScheme implements PokemonAbilityScheme {
  const factory _PokemonAbilityScheme(
      {required final int pokemonId,
      required final int abilityId}) = _$PokemonAbilitySchemeImpl;

  factory _PokemonAbilityScheme.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilitySchemeImpl.fromJson;

  @override

  /// ポケモンの ID.
  int get pokemonId;
  @override

  /// 「とくせい」の ID.
  int get abilityId;
  @override
  @JsonKey(ignore: true)
  _$$PokemonAbilitySchemeImplCopyWith<_$PokemonAbilitySchemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
