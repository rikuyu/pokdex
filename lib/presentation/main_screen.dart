import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/router/pokedex_rounter.gr.dart';
import 'package:pokedex/gen/assets.gen.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          AllPokemonRoute(),
          AllBerryRoute(),
          AllItemRoute(),
        ],
        transitionBuilder: (_, child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          final l10n = L10n.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: context.topRouteMatch.meta['isHideBottomNav'] == true
                ? null
                : BottomNavigationBar(
                    backgroundColor: PokedexColor.primaryContainer,
                    selectedItemColor: PokedexColor.onPrimaryContainer,
                    unselectedItemColor: PokedexColor.onPrimaryContainer,
                    currentIndex: tabsRouter.activeIndex,
                    onTap: (value) {
                      tabsRouter.setActiveIndex(value);
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Assets.pokemonIcon.svg(
                            width: 24.0,
                            height: 24.0,
                            colorFilter: const ColorFilter.mode(PokedexColor.onPrimaryContainer, BlendMode.srcIn)),
                        label: l10n.pokemon,
                      ),
                      BottomNavigationBarItem(
                        icon: Assets.berryIcon.svg(
                            width: 24.0,
                            height: 24.0,
                            colorFilter: const ColorFilter.mode(PokedexColor.onPrimaryContainer, BlendMode.srcIn)),
                        label: l10n.berry,
                      ),
                      BottomNavigationBarItem(
                        icon: Assets.itemIcon.svg(
                            width: 24.0,
                            height: 24.0,
                            colorFilter: const ColorFilter.mode(PokedexColor.onPrimaryContainer, BlendMode.srcIn)),
                        label: l10n.item,
                      ),
                    ],
                  ),
          );
        });
  }
}
