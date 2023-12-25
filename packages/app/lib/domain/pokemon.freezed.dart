// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pokemon {
  /// 図鑑番号。
  int get pokedex => throw _privateConstructorUsedError;

  /// 日本語名。
  String get name => throw _privateConstructorUsedError;

  /// 画像の URL.
  ///
  /// 画像がない場合は null が入る。
  String? get imageUrl => throw _privateConstructorUsedError;

  /// 「タイプ」リスト。
  List<PokeType> get typeList => throw _privateConstructorUsedError;

  /// 所持しうる「とくせい」リスト。
  List<Ability> get abilityList =>
      throw _privateConstructorUsedError; // `Pokemon` 一覧表示時には不要 かつ 取得が重いのでコメントアウトしておく。
  /// 覚える「わざ」 id のリスト。
// required List<int> moveIdList,
  /// 種族値。
  BaseStats get baseStats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int pokedex,
      String name,
      String? imageUrl,
      List<PokeType> typeList,
      List<Ability> abilityList,
      BaseStats baseStats});

  $BaseStatsCopyWith<$Res> get baseStats;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedex = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? typeList = null,
    Object? abilityList = null,
    Object? baseStats = null,
  }) {
    return _then(_value.copyWith(
      pokedex: null == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      typeList: null == typeList
          ? _value.typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<PokeType>,
      abilityList: null == abilityList
          ? _value.abilityList
          : abilityList // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      baseStats: null == baseStats
          ? _value.baseStats
          : baseStats // ignore: cast_nullable_to_non_nullable
              as BaseStats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatsCopyWith<$Res> get baseStats {
    return $BaseStatsCopyWith<$Res>(_value.baseStats, (value) {
      return _then(_value.copyWith(baseStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pokedex,
      String name,
      String? imageUrl,
      List<PokeType> typeList,
      List<Ability> abilityList,
      BaseStats baseStats});

  @override
  $BaseStatsCopyWith<$Res> get baseStats;
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedex = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? typeList = null,
    Object? abilityList = null,
    Object? baseStats = null,
  }) {
    return _then(_$PokemonImpl(
      pokedex: null == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      typeList: null == typeList
          ? _value._typeList
          : typeList // ignore: cast_nullable_to_non_nullable
              as List<PokeType>,
      abilityList: null == abilityList
          ? _value._abilityList
          : abilityList // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      baseStats: null == baseStats
          ? _value.baseStats
          : baseStats // ignore: cast_nullable_to_non_nullable
              as BaseStats,
    ));
  }
}

/// @nodoc

class _$PokemonImpl implements _Pokemon {
  const _$PokemonImpl(
      {required this.pokedex,
      required this.name,
      required this.imageUrl,
      required final List<PokeType> typeList,
      required final List<Ability> abilityList,
      required this.baseStats})
      : _typeList = typeList,
        _abilityList = abilityList;

  /// 図鑑番号。
  @override
  final int pokedex;

  /// 日本語名。
  @override
  final String name;

  /// 画像の URL.
  ///
  /// 画像がない場合は null が入る。
  @override
  final String? imageUrl;

  /// 「タイプ」リスト。
  final List<PokeType> _typeList;

  /// 「タイプ」リスト。
  @override
  List<PokeType> get typeList {
    if (_typeList is EqualUnmodifiableListView) return _typeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_typeList);
  }

  /// 所持しうる「とくせい」リスト。
  final List<Ability> _abilityList;

  /// 所持しうる「とくせい」リスト。
  @override
  List<Ability> get abilityList {
    if (_abilityList is EqualUnmodifiableListView) return _abilityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilityList);
  }

// `Pokemon` 一覧表示時には不要 かつ 取得が重いのでコメントアウトしておく。
  /// 覚える「わざ」 id のリスト。
// required List<int> moveIdList,
  /// 種族値。
  @override
  final BaseStats baseStats;

  @override
  String toString() {
    return 'Pokemon(pokedex: $pokedex, name: $name, imageUrl: $imageUrl, typeList: $typeList, abilityList: $abilityList, baseStats: $baseStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.pokedex, pokedex) || other.pokedex == pokedex) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._typeList, _typeList) &&
            const DeepCollectionEquality()
                .equals(other._abilityList, _abilityList) &&
            (identical(other.baseStats, baseStats) ||
                other.baseStats == baseStats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokedex,
      name,
      imageUrl,
      const DeepCollectionEquality().hash(_typeList),
      const DeepCollectionEquality().hash(_abilityList),
      baseStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int pokedex,
      required final String name,
      required final String? imageUrl,
      required final List<PokeType> typeList,
      required final List<Ability> abilityList,
      required final BaseStats baseStats}) = _$PokemonImpl;

  @override

  /// 図鑑番号。
  int get pokedex;
  @override

  /// 日本語名。
  String get name;
  @override

  /// 画像の URL.
  ///
  /// 画像がない場合は null が入る。
  String? get imageUrl;
  @override

  /// 「タイプ」リスト。
  List<PokeType> get typeList;
  @override

  /// 所持しうる「とくせい」リスト。
  List<Ability> get abilityList;
  @override // `Pokemon` 一覧表示時には不要 かつ 取得が重いのでコメントアウトしておく。
  /// 覚える「わざ」 id のリスト。
// required List<int> moveIdList,
  /// 種族値。
  BaseStats get baseStats;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
