// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Move {
  /// id.
  String get id => throw _privateConstructorUsedError;

  /// 日本語名。
  String get name => throw _privateConstructorUsedError;

  /// タイプ。
  PokeType get type => throw _privateConstructorUsedError;

  /// 分類。
  ///
  /// 例: ぶつり、とくしゅ、へんか。
  MoveCategory get category => throw _privateConstructorUsedError;

  /// 説明（日本語）。
  ///
  /// 説明がない場合は 空文字 が入る。
  String get description => throw _privateConstructorUsedError;

  /// 威力。
  ///
  /// へんかわざなど、威力がない場合は null が入る。
  int? get power => throw _privateConstructorUsedError;

  /// 命中率。
  ///
  /// 必中のわざなど、命中率がない場合は null が入る。
  int? get accuracy => throw _privateConstructorUsedError;

  /// PP。
  int get pp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res, Move>;
  @useResult
  $Res call(
      {String id,
      String name,
      PokeType type,
      MoveCategory category,
      String description,
      int? power,
      int? accuracy,
      int pp});
}

/// @nodoc
class _$MoveCopyWithImpl<$Res, $Val extends Move>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._value, this._then);

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
    Object? category = null,
    Object? description = null,
    Object? power = freezed,
    Object? accuracy = freezed,
    Object? pp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MoveCategory,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveImplCopyWith<$Res> implements $MoveCopyWith<$Res> {
  factory _$$MoveImplCopyWith(
          _$MoveImpl value, $Res Function(_$MoveImpl) then) =
      __$$MoveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      PokeType type,
      MoveCategory category,
      String description,
      int? power,
      int? accuracy,
      int pp});
}

/// @nodoc
class __$$MoveImplCopyWithImpl<$Res>
    extends _$MoveCopyWithImpl<$Res, _$MoveImpl>
    implements _$$MoveImplCopyWith<$Res> {
  __$$MoveImplCopyWithImpl(_$MoveImpl _value, $Res Function(_$MoveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? category = null,
    Object? description = null,
    Object? power = freezed,
    Object? accuracy = freezed,
    Object? pp = null,
  }) {
    return _then(_$MoveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokeType,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MoveCategory,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoveImpl implements _Move {
  const _$MoveImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.category,
      required this.description,
      required this.power,
      required this.accuracy,
      required this.pp});

  /// id.
  @override
  final String id;

  /// 日本語名。
  @override
  final String name;

  /// タイプ。
  @override
  final PokeType type;

  /// 分類。
  ///
  /// 例: ぶつり、とくしゅ、へんか。
  @override
  final MoveCategory category;

  /// 説明（日本語）。
  ///
  /// 説明がない場合は 空文字 が入る。
  @override
  final String description;

  /// 威力。
  ///
  /// へんかわざなど、威力がない場合は null が入る。
  @override
  final int? power;

  /// 命中率。
  ///
  /// 必中のわざなど、命中率がない場合は null が入る。
  @override
  final int? accuracy;

  /// PP。
  @override
  final int pp;

  @override
  String toString() {
    return 'Move(id: $id, name: $name, type: $type, category: $category, description: $description, power: $power, accuracy: $accuracy, pp: $pp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.pp, pp) || other.pp == pp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, category, description, power, accuracy, pp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      __$$MoveImplCopyWithImpl<_$MoveImpl>(this, _$identity);
}

abstract class _Move implements Move {
  const factory _Move(
      {required final String id,
      required final String name,
      required final PokeType type,
      required final MoveCategory category,
      required final String description,
      required final int? power,
      required final int? accuracy,
      required final int pp}) = _$MoveImpl;

  @override

  /// id.
  String get id;
  @override

  /// 日本語名。
  String get name;
  @override

  /// タイプ。
  PokeType get type;
  @override

  /// 分類。
  ///
  /// 例: ぶつり、とくしゅ、へんか。
  MoveCategory get category;
  @override

  /// 説明（日本語）。
  ///
  /// 説明がない場合は 空文字 が入る。
  String get description;
  @override

  /// 威力。
  ///
  /// へんかわざなど、威力がない場合は null が入る。
  int? get power;
  @override

  /// 命中率。
  ///
  /// 必中のわざなど、命中率がない場合は null が入る。
  int? get accuracy;
  @override

  /// PP。
  int get pp;
  @override
  @JsonKey(ignore: true)
  _$$MoveImplCopyWith<_$MoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
