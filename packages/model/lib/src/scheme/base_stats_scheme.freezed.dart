// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_stats_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseStatsScheme _$BaseStatsSchemeFromJson(Map<String, dynamic> json) {
  return _BaseStatsScheme.fromJson(json);
}

/// @nodoc
mixin _$BaseStatsScheme {
  /// 対応するポケモンの ID.
  int get pokemonId => throw _privateConstructorUsedError;

  /// HP.
  int get hp => throw _privateConstructorUsedError;

  /// こうげき。
  int get attack => throw _privateConstructorUsedError;

  /// ぼうぎょ。
  int get defense => throw _privateConstructorUsedError;

  /// とくこう。
  int get specialAttack => throw _privateConstructorUsedError;

  /// とくぼう。
  int get specialDefense => throw _privateConstructorUsedError;

  /// すばやさ。
  int get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseStatsSchemeCopyWith<BaseStatsScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStatsSchemeCopyWith<$Res> {
  factory $BaseStatsSchemeCopyWith(
          BaseStatsScheme value, $Res Function(BaseStatsScheme) then) =
      _$BaseStatsSchemeCopyWithImpl<$Res, BaseStatsScheme>;
  @useResult
  $Res call(
      {int pokemonId,
      int hp,
      int attack,
      int defense,
      int specialAttack,
      int specialDefense,
      int speed});
}

/// @nodoc
class _$BaseStatsSchemeCopyWithImpl<$Res, $Val extends BaseStatsScheme>
    implements $BaseStatsSchemeCopyWith<$Res> {
  _$BaseStatsSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? hp = null,
    Object? attack = null,
    Object? defense = null,
    Object? specialAttack = null,
    Object? specialDefense = null,
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defense: null == defense
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as int,
      specialAttack: null == specialAttack
          ? _value.specialAttack
          : specialAttack // ignore: cast_nullable_to_non_nullable
              as int,
      specialDefense: null == specialDefense
          ? _value.specialDefense
          : specialDefense // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseStatsSchemeImplCopyWith<$Res>
    implements $BaseStatsSchemeCopyWith<$Res> {
  factory _$$BaseStatsSchemeImplCopyWith(_$BaseStatsSchemeImpl value,
          $Res Function(_$BaseStatsSchemeImpl) then) =
      __$$BaseStatsSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pokemonId,
      int hp,
      int attack,
      int defense,
      int specialAttack,
      int specialDefense,
      int speed});
}

/// @nodoc
class __$$BaseStatsSchemeImplCopyWithImpl<$Res>
    extends _$BaseStatsSchemeCopyWithImpl<$Res, _$BaseStatsSchemeImpl>
    implements _$$BaseStatsSchemeImplCopyWith<$Res> {
  __$$BaseStatsSchemeImplCopyWithImpl(
      _$BaseStatsSchemeImpl _value, $Res Function(_$BaseStatsSchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? hp = null,
    Object? attack = null,
    Object? defense = null,
    Object? specialAttack = null,
    Object? specialDefense = null,
    Object? speed = null,
  }) {
    return _then(_$BaseStatsSchemeImpl(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defense: null == defense
          ? _value.defense
          : defense // ignore: cast_nullable_to_non_nullable
              as int,
      specialAttack: null == specialAttack
          ? _value.specialAttack
          : specialAttack // ignore: cast_nullable_to_non_nullable
              as int,
      specialDefense: null == specialDefense
          ? _value.specialDefense
          : specialDefense // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseStatsSchemeImpl implements _BaseStatsScheme {
  const _$BaseStatsSchemeImpl(
      {required this.pokemonId,
      required this.hp,
      required this.attack,
      required this.defense,
      required this.specialAttack,
      required this.specialDefense,
      required this.speed});

  factory _$BaseStatsSchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseStatsSchemeImplFromJson(json);

  /// 対応するポケモンの ID.
  @override
  final int pokemonId;

  /// HP.
  @override
  final int hp;

  /// こうげき。
  @override
  final int attack;

  /// ぼうぎょ。
  @override
  final int defense;

  /// とくこう。
  @override
  final int specialAttack;

  /// とくぼう。
  @override
  final int specialDefense;

  /// すばやさ。
  @override
  final int speed;

  @override
  String toString() {
    return 'BaseStatsScheme(pokemonId: $pokemonId, hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseStatsSchemeImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId) &&
            (identical(other.hp, hp) || other.hp == hp) &&
            (identical(other.attack, attack) || other.attack == attack) &&
            (identical(other.defense, defense) || other.defense == defense) &&
            (identical(other.specialAttack, specialAttack) ||
                other.specialAttack == specialAttack) &&
            (identical(other.specialDefense, specialDefense) ||
                other.specialDefense == specialDefense) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemonId, hp, attack, defense,
      specialAttack, specialDefense, speed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseStatsSchemeImplCopyWith<_$BaseStatsSchemeImpl> get copyWith =>
      __$$BaseStatsSchemeImplCopyWithImpl<_$BaseStatsSchemeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseStatsSchemeImplToJson(
      this,
    );
  }
}

abstract class _BaseStatsScheme implements BaseStatsScheme {
  const factory _BaseStatsScheme(
      {required final int pokemonId,
      required final int hp,
      required final int attack,
      required final int defense,
      required final int specialAttack,
      required final int specialDefense,
      required final int speed}) = _$BaseStatsSchemeImpl;

  factory _BaseStatsScheme.fromJson(Map<String, dynamic> json) =
      _$BaseStatsSchemeImpl.fromJson;

  @override

  /// 対応するポケモンの ID.
  int get pokemonId;
  @override

  /// HP.
  int get hp;
  @override

  /// こうげき。
  int get attack;
  @override

  /// ぼうぎょ。
  int get defense;
  @override

  /// とくこう。
  int get specialAttack;
  @override

  /// とくぼう。
  int get specialDefense;
  @override

  /// すばやさ。
  int get speed;
  @override
  @JsonKey(ignore: true)
  _$$BaseStatsSchemeImplCopyWith<_$BaseStatsSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
