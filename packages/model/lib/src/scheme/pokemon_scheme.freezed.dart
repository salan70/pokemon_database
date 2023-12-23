// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonScheme {
  /// 図鑑番号。
  int get pokedex => throw _privateConstructorUsedError;

  /// 名前。
  String get name => throw _privateConstructorUsedError;

  /// 画像 URL.
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSchemeCopyWith<PokemonScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSchemeCopyWith<$Res> {
  factory $PokemonSchemeCopyWith(
          PokemonScheme value, $Res Function(PokemonScheme) then) =
      _$PokemonSchemeCopyWithImpl<$Res, PokemonScheme>;
  @useResult
  $Res call({int pokedex, String name, String imageUrl});
}

/// @nodoc
class _$PokemonSchemeCopyWithImpl<$Res, $Val extends PokemonScheme>
    implements $PokemonSchemeCopyWith<$Res> {
  _$PokemonSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedex = null,
    Object? name = null,
    Object? imageUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSchemeImplCopyWith<$Res>
    implements $PokemonSchemeCopyWith<$Res> {
  factory _$$PokemonSchemeImplCopyWith(
          _$PokemonSchemeImpl value, $Res Function(_$PokemonSchemeImpl) then) =
      __$$PokemonSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokedex, String name, String imageUrl});
}

/// @nodoc
class __$$PokemonSchemeImplCopyWithImpl<$Res>
    extends _$PokemonSchemeCopyWithImpl<$Res, _$PokemonSchemeImpl>
    implements _$$PokemonSchemeImplCopyWith<$Res> {
  __$$PokemonSchemeImplCopyWithImpl(
      _$PokemonSchemeImpl _value, $Res Function(_$PokemonSchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedex = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PokemonSchemeImpl(
      pokedex: null == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonSchemeImpl implements _PokemonScheme {
  const _$PokemonSchemeImpl(
      {required this.pokedex, required this.name, required this.imageUrl});

  /// 図鑑番号。
  @override
  final int pokedex;

  /// 名前。
  @override
  final String name;

  /// 画像 URL.
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PokemonScheme(pokedex: $pokedex, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSchemeImpl &&
            (identical(other.pokedex, pokedex) || other.pokedex == pokedex) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokedex, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSchemeImplCopyWith<_$PokemonSchemeImpl> get copyWith =>
      __$$PokemonSchemeImplCopyWithImpl<_$PokemonSchemeImpl>(this, _$identity);
}

abstract class _PokemonScheme implements PokemonScheme {
  const factory _PokemonScheme(
      {required final int pokedex,
      required final String name,
      required final String imageUrl}) = _$PokemonSchemeImpl;

  @override

  /// 図鑑番号。
  int get pokedex;
  @override

  /// 名前。
  String get name;
  @override

  /// 画像 URL.
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSchemeImplCopyWith<_$PokemonSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
