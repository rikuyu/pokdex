import 'package:auto_route/auto_route.dart';
import 'package:pokedex/foundation/router/pokedex_rounter.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class PokedexRounter extends $PokedexRounter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: MainRoute.page,
          children: [
            AutoRoute(page: AllPokemonRounterPage.page, children: [
              AutoRoute(page: AllPokemonRoute.page, initial: true),
              AutoRoute(
                page: PokemonDetailRoute.page,
                meta: const {'isHideBottomNav': true},
              ),
            ]),
            AutoRoute(page: AllBerryRoute.page),
            AutoRoute(page: AllItemRoute.page),
          ],
        ),
      ];
}
