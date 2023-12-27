// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonListHash() => r'8544ae331f619382ff8ea33414eed4b32bfb36a3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
///
/// Copied from [pokemonList].
@ProviderFor(pokemonList)
const pokemonListProvider = PokemonListFamily();

/// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
///
/// Copied from [pokemonList].
class PokemonListFamily extends Family<AsyncValue<List<Pokemon>>> {
  /// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
  ///
  /// Copied from [pokemonList].
  const PokemonListFamily();

  /// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
  ///
  /// Copied from [pokemonList].
  PokemonListProvider call(
    List<int> pokedexList,
  ) {
    return PokemonListProvider(
      pokedexList,
    );
  }

  @override
  PokemonListProvider getProviderOverride(
    covariant PokemonListProvider provider,
  ) {
    return call(
      provider.pokedexList,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonListProvider';
}

/// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
///
/// Copied from [pokemonList].
class PokemonListProvider extends AutoDisposeFutureProvider<List<Pokemon>> {
  /// [pokedexList] に合致する [Pokemon] のリストを保持する provider.
  ///
  /// Copied from [pokemonList].
  PokemonListProvider(
    List<int> pokedexList,
  ) : this._internal(
          (ref) => pokemonList(
            ref as PokemonListRef,
            pokedexList,
          ),
          from: pokemonListProvider,
          name: r'pokemonListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonListHash,
          dependencies: PokemonListFamily._dependencies,
          allTransitiveDependencies:
              PokemonListFamily._allTransitiveDependencies,
          pokedexList: pokedexList,
        );

  PokemonListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokedexList,
  }) : super.internal();

  final List<int> pokedexList;

  @override
  Override overrideWith(
    FutureOr<List<Pokemon>> Function(PokemonListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonListProvider._internal(
        (ref) => create(ref as PokemonListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokedexList: pokedexList,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pokemon>> createElement() {
    return _PokemonListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonListProvider && other.pokedexList == pokedexList;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokedexList.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonListRef on AutoDisposeFutureProviderRef<List<Pokemon>> {
  /// The parameter `pokedexList` of this provider.
  List<int> get pokedexList;
}

class _PokemonListProviderElement
    extends AutoDisposeFutureProviderElement<List<Pokemon>>
    with PokemonListRef {
  _PokemonListProviderElement(super.provider);

  @override
  List<int> get pokedexList => (origin as PokemonListProvider).pokedexList;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
