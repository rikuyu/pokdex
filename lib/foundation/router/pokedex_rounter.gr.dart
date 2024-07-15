// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:pokedex/presentation/all_pokemon/all_pokemon_screen.dart'
    as _i1;

abstract class $PokedexRounter extends _i2.RootStackRouter {
  $PokedexRounter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    AllPokemonRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllPokemonScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.AllPokemonScreen]
class AllPokemonRoute extends _i2.PageRouteInfo<void> {
  const AllPokemonRoute({List<_i2.PageRouteInfo>? children})
      : super(
          AllPokemonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllPokemonRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
