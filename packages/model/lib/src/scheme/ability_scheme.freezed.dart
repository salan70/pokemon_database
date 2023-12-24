// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityScheme _$AbilitySchemeFromJson(Map<String, dynamic> json) {
  return _AbilityScheme.fromJson(json);
}

/// @nodoc
mixin _$AbilityScheme {
  /// ID.
  int get id => throw _privateConstructorUsedError;

  /// 名前。
  String get name => throw _privateConstructorUsedError;

  /// 説明。
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitySchemeCopyWith<AbilityScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitySchemeCopyWith<$Res> {
  factory $AbilitySchemeCopyWith(
          AbilityScheme value, $Res Function(AbilityScheme) then) =
      _$AbilitySchemeCopyWithImpl<$Res, AbilityScheme>;
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class _$AbilitySchemeCopyWithImpl<$Res, $Val extends AbilityScheme>
    implements $AbilitySchemeCopyWith<$Res> {
  _$AbilitySchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilitySchemeImplCopyWith<$Res>
    implements $AbilitySchemeCopyWith<$Res> {
  factory _$$AbilitySchemeImplCopyWith(
          _$AbilitySchemeImpl value, $Res Function(_$AbilitySchemeImpl) then) =
      __$$AbilitySchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class __$$AbilitySchemeImplCopyWithImpl<$Res>
    extends _$AbilitySchemeCopyWithImpl<$Res, _$AbilitySchemeImpl>
    implements _$$AbilitySchemeImplCopyWith<$Res> {
  __$$AbilitySchemeImplCopyWithImpl(
      _$AbilitySchemeImpl _value, $Res Function(_$AbilitySchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$AbilitySchemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilitySchemeImpl implements _AbilityScheme {
  const _$AbilitySchemeImpl(
      {required this.id, required this.name, required this.description});

  factory _$AbilitySchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilitySchemeImplFromJson(json);

  /// ID.
  @override
  final int id;

  /// 名前。
  @override
  final String name;

  /// 説明。
  @override
  final String description;

  @override
  String toString() {
    return 'AbilityScheme(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilitySchemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilitySchemeImplCopyWith<_$AbilitySchemeImpl> get copyWith =>
      __$$AbilitySchemeImplCopyWithImpl<_$AbilitySchemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilitySchemeImplToJson(
      this,
    );
  }
}

abstract class _AbilityScheme implements AbilityScheme {
  const factory _AbilityScheme(
      {required final int id,
      required final String name,
      required final String description}) = _$AbilitySchemeImpl;

  factory _AbilityScheme.fromJson(Map<String, dynamic> json) =
      _$AbilitySchemeImpl.fromJson;

  @override

  /// ID.
  int get id;
  @override

  /// 名前。
  String get name;
  @override

  /// 説明。
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AbilitySchemeImplCopyWith<_$AbilitySchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
