import 'package:auto_route/auto_route.dart';
import 'package:pokedex/foundation/router/pokedex_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class PokedexRouter extends $PokedexRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: MainRoute.page,
          children: [
            AutoRoute(
              page: AllPokemonRounter.page,
              children: [
                AutoRoute(page: AllPokemonRoute.page, initial: true),
                AutoRoute(
                  page: PokemonDetailRoute.page,
                  meta: const {'isHideBottomNav': true},
                ),
              ],
            ),
            AutoRoute(
              page: ItemTabRoute.page,
              children: [
                AutoRoute(page: AllBerryRoute.page),
                AutoRoute(page: AllHealItemRoute.page),
                AutoRoute(page: AllMonsterBallRoute.page),
                AutoRoute(page: AllItemRoute.page),
              ],
            ),
            AutoRoute(page: MyPageRoute.page),
          ],
        ),
      ];
}
