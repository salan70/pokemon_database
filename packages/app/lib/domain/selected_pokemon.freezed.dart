// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedPokemon {
  List<Pokemon> get redPokemonList => throw _privateConstructorUsedError;
  List<Pokemon> get bluePokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedPokemonCopyWith<SelectedPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPokemonCopyWith<$Res> {
  factory $SelectedPokemonCopyWith(
          SelectedPokemon value, $Res Function(SelectedPokemon) then) =
      _$SelectedPokemonCopyWithImpl<$Res, SelectedPokemon>;
  @useResult
  $Res call({List<Pokemon> redPokemonList, List<Pokemon> bluePokemonList});
}

/// @nodoc
class _$SelectedPokemonCopyWithImpl<$Res, $Val extends SelectedPokemon>
    implements $SelectedPokemonCopyWith<$Res> {
  _$SelectedPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redPokemonList = null,
    Object? bluePokemonList = null,
  }) {
    return _then(_value.copyWith(
      redPokemonList: null == redPokemonList
          ? _value.redPokemonList
          : redPokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      bluePokemonList: null == bluePokemonList
          ? _value.bluePokemonList
          : bluePokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedPokemonImplCopyWith<$Res>
    implements $SelectedPokemonCopyWith<$Res> {
  factory _$$SelectedPokemonImplCopyWith(_$SelectedPokemonImpl value,
          $Res Function(_$SelectedPokemonImpl) then) =
      __$$SelectedPokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> redPokemonList, List<Pokemon> bluePokemonList});
}

/// @nodoc
class __$$SelectedPokemonImplCopyWithImpl<$Res>
    extends _$SelectedPokemonCopyWithImpl<$Res, _$SelectedPokemonImpl>
    implements _$$SelectedPokemonImplCopyWith<$Res> {
  __$$SelectedPokemonImplCopyWithImpl(
      _$SelectedPokemonImpl _value, $Res Function(_$SelectedPokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redPokemonList = null,
    Object? bluePokemonList = null,
  }) {
    return _then(_$SelectedPokemonImpl(
      redPokemonList: null == redPokemonList
          ? _value._redPokemonList
          : redPokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      bluePokemonList: null == bluePokemonList
          ? _value._bluePokemonList
          : bluePokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$SelectedPokemonImpl implements _SelectedPokemon {
  const _$SelectedPokemonImpl(
      {required final List<Pokemon> redPokemonList,
      required final List<Pokemon> bluePokemonList})
      : _redPokemonList = redPokemonList,
        _bluePokemonList = bluePokemonList;

  final List<Pokemon> _redPokemonList;
  @override
  List<Pokemon> get redPokemonList {
    if (_redPokemonList is EqualUnmodifiableListView) return _redPokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_redPokemonList);
  }

  final List<Pokemon> _bluePokemonList;
  @override
  List<Pokemon> get bluePokemonList {
    if (_bluePokemonList is EqualUnmodifiableListView) return _bluePokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bluePokemonList);
  }

  @override
  String toString() {
    return 'SelectedPokemon(redPokemonList: $redPokemonList, bluePokemonList: $bluePokemonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPokemonImpl &&
            const DeepCollectionEquality()
                .equals(other._redPokemonList, _redPokemonList) &&
            const DeepCollectionEquality()
                .equals(other._bluePokemonList, _bluePokemonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_redPokemonList),
      const DeepCollectionEquality().hash(_bluePokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPokemonImplCopyWith<_$SelectedPokemonImpl> get copyWith =>
      __$$SelectedPokemonImplCopyWithImpl<_$SelectedPokemonImpl>(
          this, _$identity);
}

abstract class _SelectedPokemon implements SelectedPokemon {
  const factory _SelectedPokemon(
      {required final List<Pokemon> redPokemonList,
      required final List<Pokemon> bluePokemonList}) = _$SelectedPokemonImpl;

  @override
  List<Pokemon> get redPokemonList;
  @override
  List<Pokemon> get bluePokemonList;
  @override
  @JsonKey(ignore: true)
  _$$SelectedPokemonImplCopyWith<_$SelectedPokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
