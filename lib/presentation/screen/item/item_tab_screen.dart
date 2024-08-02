import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/router/pokedex_router.gr.dart';
import 'package:pokedex/gen/assets.gen.dart';

@RoutePage()
class ItemTabScreen extends StatelessWidget {
  const ItemTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        AllBerryRoute(),
        AllHealItemRoute(),
        AllMonsterBallRoute(),
        AllItemRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text(l10n.itemTitle),
              backgroundColor: PokedexColor.primaryContainer,
              foregroundColor: PokedexColor.onPrimaryContainer,
              bottom: TabBar(
                dividerColor: PokedexColor.onPrimaryContainer,
                indicatorColor: PokedexColor.onPrimaryContainer,
                labelColor: PokedexColor.onPrimaryContainer,
                unselectedLabelColor: PokedexColor.onPrimaryContainer,
                onTap: tabsRouter.setActiveIndex,
                tabs: [
                  Tab(
                    text: l10n.berryTitle,
                    icon: Assets.berryIcon.svg(
                      width: 24.0,
                      height: 24.0,
                      colorFilter: const ColorFilter.mode(
                        PokedexColor.onPrimaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Tab(
                    text: l10n.ballTitle,
                    icon: Assets.blackMonsterBall.svg(
                      width: 24.0,
                      height: 24.0,
                      colorFilter: const ColorFilter.mode(
                        PokedexColor.onPrimaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Tab(
                    text: l10n.healTitle,
                    icon: Assets.bottle.svg(
                      width: 24.0,
                      height: 24.0,
                      colorFilter: const ColorFilter.mode(
                        PokedexColor.onPrimaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Tab(
                    text: l10n.allItemTitle,
                    icon: Assets.itemIcon.svg(
                      width: 24.0,
                      height: 24.0,
                      colorFilter: const ColorFilter.mode(
                        PokedexColor.onPrimaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: child,
          ),
        );
      },
    );
  }
}
