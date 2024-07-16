// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:pokedex/presentation/all_berry/all_berry_screen.dart' as _i1;
import 'package:pokedex/presentation/all_item/all_item_screen.dart' as _i2;
import 'package:pokedex/presentation/all_pokemon/all_pokemon_screen.dart'
    as _i3;
import 'package:pokedex/presentation/main_screen.dart' as _i4;

abstract class $PokedexRounter extends _i5.RootStackRouter {
  $PokedexRounter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AllBerryRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllBerryScreen(),
      );
    },
    AllItemRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AllItemScreen(),
      );
    },
    AllPokemonRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AllPokemonScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllBerryScreen]
class AllBerryRoute extends _i5.PageRouteInfo<void> {
  const AllBerryRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AllBerryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllBerryRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AllItemScreen]
class AllItemRoute extends _i5.PageRouteInfo<void> {
  const AllItemRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AllItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllItemRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AllPokemonScreen]
class AllPokemonRoute extends _i5.PageRouteInfo<void> {
  const AllPokemonRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AllPokemonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
