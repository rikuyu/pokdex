import 'package:auto_route/auto_route.dart';
import 'package:pokedex/foundation/router/pokedex_rounter.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class PokedexRounter extends $PokedexRounter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AllPokemonRoute.page, initial: true),
      ];
}
