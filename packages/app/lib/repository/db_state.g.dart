// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbHash() => r'382a1227c529e02249f7f376d03653ae0ff14389';

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

/// See also [db].
@ProviderFor(db)
const dbProvider = DbFamily();

/// See also [db].
class DbFamily extends Family<AsyncValue<Database>> {
  /// See also [db].
  const DbFamily();

  /// See also [db].
  DbProvider call(
    String dbName,
  ) {
    return DbProvider(
      dbName,
    );
  }

  @override
  DbProvider getProviderOverride(
    covariant DbProvider provider,
  ) {
    return call(
      provider.dbName,
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
  String? get name => r'dbProvider';
}

/// See also [db].
class DbProvider extends FutureProvider<Database> {
  /// See also [db].
  DbProvider(
    String dbName,
  ) : this._internal(
          (ref) => db(
            ref as DbRef,
            dbName,
          ),
          from: dbProvider,
          name: r'dbProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$dbHash,
          dependencies: DbFamily._dependencies,
          allTransitiveDependencies: DbFamily._allTransitiveDependencies,
          dbName: dbName,
        );

  DbProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dbName,
  }) : super.internal();

  final String dbName;

  @override
  Override overrideWith(
    FutureOr<Database> Function(DbRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DbProvider._internal(
        (ref) => create(ref as DbRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dbName: dbName,
      ),
    );
  }

  @override
  FutureProviderElement<Database> createElement() {
    return _DbProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DbProvider && other.dbName == dbName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dbName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DbRef on FutureProviderRef<Database> {
  /// The parameter `dbName` of this provider.
  String get dbName;
}

class _DbProviderElement extends FutureProviderElement<Database> with DbRef {
  _DbProviderElement(super.provider);

  @override
  String get dbName => (origin as DbProvider).dbName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
