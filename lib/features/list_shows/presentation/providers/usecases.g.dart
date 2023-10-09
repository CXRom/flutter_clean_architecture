// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getShowsUseCaseHash() => r'c8eec026b9c86982509f372e5e005fee4617e7a9';

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

/// See also [getShowsUseCase].
@ProviderFor(getShowsUseCase)
const getShowsUseCaseProvider = GetShowsUseCaseFamily();

/// See also [getShowsUseCase].
class GetShowsUseCaseFamily extends Family<AsyncValue<List<ShowEntity>>> {
  /// See also [getShowsUseCase].
  const GetShowsUseCaseFamily();

  /// See also [getShowsUseCase].
  GetShowsUseCaseProvider call(
    String query,
  ) {
    return GetShowsUseCaseProvider(
      query,
    );
  }

  @override
  GetShowsUseCaseProvider getProviderOverride(
    covariant GetShowsUseCaseProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'getShowsUseCaseProvider';
}

/// See also [getShowsUseCase].
class GetShowsUseCaseProvider
    extends AutoDisposeFutureProvider<List<ShowEntity>> {
  /// See also [getShowsUseCase].
  GetShowsUseCaseProvider(
    String query,
  ) : this._internal(
          (ref) => getShowsUseCase(
            ref as GetShowsUseCaseRef,
            query,
          ),
          from: getShowsUseCaseProvider,
          name: r'getShowsUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getShowsUseCaseHash,
          dependencies: GetShowsUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetShowsUseCaseFamily._allTransitiveDependencies,
          query: query,
        );

  GetShowsUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<ShowEntity>> Function(GetShowsUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetShowsUseCaseProvider._internal(
        (ref) => create(ref as GetShowsUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ShowEntity>> createElement() {
    return _GetShowsUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetShowsUseCaseProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetShowsUseCaseRef on AutoDisposeFutureProviderRef<List<ShowEntity>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _GetShowsUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<List<ShowEntity>>
    with GetShowsUseCaseRef {
  _GetShowsUseCaseProviderElement(super.provider);

  @override
  String get query => (origin as GetShowsUseCaseProvider).query;
}

String _$getShowByIdUseCaseHash() =>
    r'abac6cbd646da62aa710dd6bf0f0b54ad44536cf';

/// See also [getShowByIdUseCase].
@ProviderFor(getShowByIdUseCase)
const getShowByIdUseCaseProvider = GetShowByIdUseCaseFamily();

/// See also [getShowByIdUseCase].
class GetShowByIdUseCaseFamily extends Family<AsyncValue<ShowEntity>> {
  /// See also [getShowByIdUseCase].
  const GetShowByIdUseCaseFamily();

  /// See also [getShowByIdUseCase].
  GetShowByIdUseCaseProvider call(
    int id,
  ) {
    return GetShowByIdUseCaseProvider(
      id,
    );
  }

  @override
  GetShowByIdUseCaseProvider getProviderOverride(
    covariant GetShowByIdUseCaseProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getShowByIdUseCaseProvider';
}

/// See also [getShowByIdUseCase].
class GetShowByIdUseCaseProvider extends AutoDisposeFutureProvider<ShowEntity> {
  /// See also [getShowByIdUseCase].
  GetShowByIdUseCaseProvider(
    int id,
  ) : this._internal(
          (ref) => getShowByIdUseCase(
            ref as GetShowByIdUseCaseRef,
            id,
          ),
          from: getShowByIdUseCaseProvider,
          name: r'getShowByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getShowByIdUseCaseHash,
          dependencies: GetShowByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetShowByIdUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  GetShowByIdUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<ShowEntity> Function(GetShowByIdUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetShowByIdUseCaseProvider._internal(
        (ref) => create(ref as GetShowByIdUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ShowEntity> createElement() {
    return _GetShowByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetShowByIdUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetShowByIdUseCaseRef on AutoDisposeFutureProviderRef<ShowEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetShowByIdUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<ShowEntity>
    with GetShowByIdUseCaseRef {
  _GetShowByIdUseCaseProviderElement(super.provider);

  @override
  int get id => (origin as GetShowByIdUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
