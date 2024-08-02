// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:pokedex/presentation/main_screen.dart' as _i9;
import 'package:pokedex/presentation/screen/all_pokemon/all_pokemon_rounter.dart'
    as _i5;
import 'package:pokedex/presentation/screen/all_pokemon/all_pokemon_screen.dart'
    as _i6;
import 'package:pokedex/presentation/screen/item/all/all_item_screen.dart'
    as _i3;
import 'package:pokedex/presentation/screen/item/berry/all_berry_screen.dart'
    as _i1;
import 'package:pokedex/presentation/screen/item/berry/berry_detail_screen.dart'
    as _i7;
import 'package:pokedex/presentation/screen/item/heal/all_heal_item_screen.dart'
    as _i2;
import 'package:pokedex/presentation/screen/item/item_tab_screen.dart' as _i8;
import 'package:pokedex/presentation/screen/item/monster_ball/all_monster_ball_screen.dart'
    as _i4;
import 'package:pokedex/presentation/screen/mypage/my_page_screen.dart' as _i10;
import 'package:pokedex/presentation/screen/pokemon_detail/pokemon_detail_screen.dart'
    as _i11;

abstract class $PokedexRouter extends _i12.RootStackRouter {
  $PokedexRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AllBerryRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllBerryScreen(),
      );
    },
    AllHealItemRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllHealItemScreen(),
      );
    },
    AllItemRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllItemScreen(),
      );
    },
    AllMonsterBallRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AllMonsterBallScreen(),
      );
    },
    AllPokemonRounter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AllPokemonRounter(),
      );
    },
    AllPokemonRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AllPokemonScreen(),
      );
    },
    BerryDetailRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.BerryDetailScreen(),
      );
    },
    ItemTabRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ItemTabScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MainScreen(),
      );
    },
    MyPageRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyPageScreen(),
      );
    },
    PokemonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.PokemonDetailScreen(
          id: args.id,
          name: args.name,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AllBerryScreen]
class AllBerryRoute extends _i12.PageRouteInfo<void> {
  const AllBerryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllBerryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllBerryRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllHealItemScreen]
class AllHealItemRoute extends _i12.PageRouteInfo<void> {
  const AllHealItemRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllHealItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllHealItemRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllItemScreen]
class AllItemRoute extends _i12.PageRouteInfo<void> {
  const AllItemRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllItemRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AllMonsterBallScreen]
class AllMonsterBallRoute extends _i12.PageRouteInfo<void> {
  const AllMonsterBallRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllMonsterBallRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllMonsterBallRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AllPokemonRounter]
class AllPokemonRounter extends _i12.PageRouteInfo<void> {
  const AllPokemonRounter({List<_i12.PageRouteInfo>? children})
      : super(
          AllPokemonRounter.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRounter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AllPokemonScreen]
class AllPokemonRoute extends _i12.PageRouteInfo<void> {
  const AllPokemonRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllPokemonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.BerryDetailScreen]
class BerryDetailRoute extends _i12.PageRouteInfo<void> {
  const BerryDetailRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BerryDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'BerryDetailRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ItemTabScreen]
class ItemTabRoute extends _i12.PageRouteInfo<void> {
  const ItemTabRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ItemTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ItemTabRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyPageScreen]
class MyPageRoute extends _i12.PageRouteInfo<void> {
  const MyPageRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPageRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PokemonDetailScreen]
class PokemonDetailRoute extends _i12.PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    required int id,
    required String name,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            id: id,
            name: name,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const _i12.PageInfo<PokemonDetailRouteArgs> page =
      _i12.PageInfo<PokemonDetailRouteArgs>(name);
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    required this.id,
    required this.name,
    this.key,
  });

  final int id;

  final String name;

  final _i13.Key? key;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{id: $id, name: $name, key: $key}';
  }
}
