// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoveScheme _$MoveSchemeFromJson(Map<String, dynamic> json) {
  return _MoveScheme.fromJson(json);
}

/// @nodoc
mixin _$MoveScheme {
  /// ID.
  int get id => throw _privateConstructorUsedError;

  /// 名前。
  String get name => throw _privateConstructorUsedError;

  /// タイプ.
  PokeType get type => throw _privateConstructorUsedError;

  /// 説明。
  String get description => throw _privateConstructorUsedError;

  /// カテゴリ ID.
  int get categoryId => throw _privateConstructorUsedError;

  /// 威力。
  int? get power => throw _privateConstructorUsedError;

  /// 命中率。
  double? get accuracy => throw _privateConstructorUsedError;

  /// PP.
  int get pp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveSchemeCopyWith<MoveScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveSchemeCopyWith<$Res> {
  factory $MoveSchemeCopyWith(
          MoveScheme value, $Res Function(MoveScheme) then) =
      _$MoveSchemeCopyWithImpl<$Res, MoveScheme>;
  @useResult
  $Res call(
      {int id,
      String name,
      PokeType type,
      String description,
      int categoryId,
      int? power,
      double? accuracy,
      int pp});
}

/// @nodoc
class _$MoveSchemeCopyWithImpl<$Res, $Val extends MoveScheme>
    implements $MoveSchemeCopyWith<$Res> {
  _$MoveSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? categoryId = null,
    Object? power = freezed,
    Object? accuracy = freezed,
    Object? pp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveSchemeImplCopyWith<$Res>
    implements $MoveSchemeCopyWith<$Res> {
  factory _$$MoveSchemeImplCopyWith(
          _$MoveSchemeImpl value, $Res Function(_$MoveSchemeImpl) then) =
      __$$MoveSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      PokeType type,
      String description,
      int categoryId,
      int? power,
      double? accuracy,
      int pp});
}

/// @nodoc
class __$$MoveSchemeImplCopyWithImpl<$Res>
    extends _$MoveSchemeCopyWithImpl<$Res, _$MoveSchemeImpl>
    implements _$$MoveSchemeImplCopyWith<$Res> {
  __$$MoveSchemeImplCopyWithImpl(
      _$MoveSchemeImpl _value, $Res Function(_$MoveSchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? categoryId = null,
    Object? power = freezed,
    Object? accuracy = freezed,
    Object? pp = null,
  }) {
    return _then(_$MoveSchemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveSchemeImpl implements _MoveScheme {
  const _$MoveSchemeImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.description,
      required this.categoryId,
      required this.power,
      required this.accuracy,
      required this.pp});

  factory _$MoveSchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveSchemeImplFromJson(json);

  /// ID.
  @override
  final int id;

  /// 名前。
  @override
  final String name;

  /// タイプ.
  @override
  final PokeType type;

  /// 説明。
  @override
  final String description;

  /// カテゴリ ID.
  @override
  final int categoryId;

  /// 威力。
  @override
  final int? power;

  /// 命中率。
  @override
  final double? accuracy;

  /// PP.
  @override
  final int pp;

  @override
  String toString() {
    return 'MoveScheme(id: $id, name: $name, type: $type, description: $description, categoryId: $categoryId, power: $power, accuracy: $accuracy, pp: $pp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveSchemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.pp, pp) || other.pp == pp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, description,
      categoryId, power, accuracy, pp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveSchemeImplCopyWith<_$MoveSchemeImpl> get copyWith =>
      __$$MoveSchemeImplCopyWithImpl<_$MoveSchemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveSchemeImplToJson(
      this,
    );
  }
}

abstract class _MoveScheme implements MoveScheme {
  const factory _MoveScheme(
      {required final int id,
      required final String name,
      required final PokeType type,
      required final String description,
      required final int categoryId,
      required final int? power,
      required final double? accuracy,
      required final int pp}) = _$MoveSchemeImpl;

  factory _MoveScheme.fromJson(Map<String, dynamic> json) =
      _$MoveSchemeImpl.fromJson;

  @override

  /// ID.
  int get id;
  @override

  /// 名前。
  String get name;
  @override

  /// タイプ.
  PokeType get type;
  @override

  /// 説明。
  String get description;
  @override

  /// カテゴリ ID.
  int get categoryId;
  @override

  /// 威力。
  int? get power;
  @override

  /// 命中率。
  double? get accuracy;
  @override

  /// PP.
  int get pp;
  @override
  @JsonKey(ignore: true)
  _$$MoveSchemeImplCopyWith<_$MoveSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
