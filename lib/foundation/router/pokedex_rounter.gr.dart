// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:pokedex/presentation/main_screen.dart' as _i5;
import 'package:pokedex/presentation/screen/all_berry/all_berry_screen.dart'
    as _i1;
import 'package:pokedex/presentation/screen/all_item/all_item_screen.dart'
    as _i2;
import 'package:pokedex/presentation/screen/all_pokemon/all_pokemon_rounter_page.dart'
    as _i3;
import 'package:pokedex/presentation/screen/all_pokemon/all_pokemon_screen.dart'
    as _i4;
import 'package:pokedex/presentation/screen/pokemon_detail/pokemon_detail_screen.dart'
    as _i6;

abstract class $PokedexRounter extends _i7.RootStackRouter {
  $PokedexRounter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AllBerryRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllBerryScreen(),
      );
    },
    AllItemRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllItemScreen(),
      );
    },
    AllPokemonRounterPage.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllPokemonRounterPage(),
      );
    },
    AllPokemonRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AllPokemonScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    PokemonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PokemonDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AllBerryScreen]
class AllBerryRoute extends _i7.PageRouteInfo<void> {
  const AllBerryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AllBerryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllBerryRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllItemScreen]
class AllItemRoute extends _i7.PageRouteInfo<void> {
  const AllItemRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AllItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllItemRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllPokemonRounterPage]
class AllPokemonRounterPage extends _i7.PageRouteInfo<void> {
  const AllPokemonRounterPage({List<_i7.PageRouteInfo>? children})
      : super(
          AllPokemonRounterPage.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRounterPage';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AllPokemonScreen]
class AllPokemonRoute extends _i7.PageRouteInfo<void> {
  const AllPokemonRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AllPokemonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PokemonDetailScreen]
class PokemonDetailRoute extends _i7.PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    required int id,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const _i7.PageInfo<PokemonDetailRouteArgs> page =
      _i7.PageInfo<PokemonDetailRouteArgs>(name);
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{id: $id, key: $key}';
  }
}
