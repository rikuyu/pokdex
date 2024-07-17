import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:pokedex/foundation/widgets/pokedex_scaffold.dart';
import 'package:pokedex/presentation/state/all_berry/all_berry_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class AllBerryScreen extends ConsumerWidget {
  const AllBerryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final berries = ref.watch(allBerryStateProvider);
    return PokedexScaffold(
        title: l10n.berryTitle,
        body: berries.when(
            loading: () => const Center(child: CircularProgressIndicator(color: PokedexColor.primaryContainer)),
            error: (_, __) => const Center(child: Icon(Icons.error)),
            data: (berries) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                child: GridView.builder(
                    itemCount: berries.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (c, i) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: PokedexColor.black90Alpha),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CachedNetworkImage(
                                  imageUrl: Constants.getItemImage(berries[i].name),
                                  placeholder: (_, __) =>
                                      const Icon(Icons.question_mark, color: PokedexColor.primaryContainer),
                                  errorWidget: (_, __, ___) => const Icon(Icons.error),
                                )),
                                Text(berries[i].name,
                                    style: const TextStyle(
                                      color: PokedexColor.black90Alpha,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ));
                    }),
              );
            }));
  }
}
