// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonDetailStateHash() =>
    r'885d65056df8c8baa756d3d9b884444e1670614e';

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

abstract class _$PokemonDetailState
    extends BuildlessAutoDisposeAsyncNotifier<PokemonDetail> {
  late final int pokemonId;

  FutureOr<PokemonDetail> build(
    int pokemonId,
  );
}

/// See also [PokemonDetailState].
@ProviderFor(PokemonDetailState)
const pokemonDetailStateProvider = PokemonDetailStateFamily();

/// See also [PokemonDetailState].
class PokemonDetailStateFamily extends Family<AsyncValue<PokemonDetail>> {
  /// See also [PokemonDetailState].
  const PokemonDetailStateFamily();

  /// See also [PokemonDetailState].
  PokemonDetailStateProvider call(
    int pokemonId,
  ) {
    return PokemonDetailStateProvider(
      pokemonId,
    );
  }

  @override
  PokemonDetailStateProvider getProviderOverride(
    covariant PokemonDetailStateProvider provider,
  ) {
    return call(
      provider.pokemonId,
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
  String? get name => r'pokemonDetailStateProvider';
}

/// See also [PokemonDetailState].
class PokemonDetailStateProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PokemonDetailState, PokemonDetail> {
  /// See also [PokemonDetailState].
  PokemonDetailStateProvider(
    int pokemonId,
  ) : this._internal(
          () => PokemonDetailState()..pokemonId = pokemonId,
          from: pokemonDetailStateProvider,
          name: r'pokemonDetailStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonDetailStateHash,
          dependencies: PokemonDetailStateFamily._dependencies,
          allTransitiveDependencies:
              PokemonDetailStateFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonDetailStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  FutureOr<PokemonDetail> runNotifierBuild(
    covariant PokemonDetailState notifier,
  ) {
    return notifier.build(
      pokemonId,
    );
  }

  @override
  Override overrideWith(PokemonDetailState Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonDetailStateProvider._internal(
        () => create()..pokemonId = pokemonId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PokemonDetailState, PokemonDetail>
      createElement() {
    return _PokemonDetailStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailStateProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonDetailStateRef
    on AutoDisposeAsyncNotifierProviderRef<PokemonDetail> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonDetailStateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PokemonDetailState,
        PokemonDetail> with PokemonDetailStateRef {
  _PokemonDetailStateProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonDetailStateProvider).pokemonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
