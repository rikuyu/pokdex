import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/berry_data.dart';
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
        bodyColor: PokedexColor.backgroundColor,
        body: berries.when(
            loading: () => const Center(child: CircularProgressIndicator(color: PokedexColor.primaryContainer)),
            error: (_, __) => const Center(child: Icon(Icons.error)),
            data: (berries) {
              final berresData = berries.map((b) => getBerryData(b)).whereType<BerryData>().toList();
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                  child: ListView.separated(
                      itemCount: berresData.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (c, i) {
                        return ListTile(
                          title: Text(
                            berresData[i].nameJa,
                            style: const TextStyle(fontSize: 14),
                          ),
                          subtitle: Text(berresData[i].description,
                              style: const TextStyle(fontSize: 12, color: PokedexColor.black70Alpha)),
                          leading: CachedNetworkImage(
                            imageUrl: Constants.getItemImage(berresData[i].itemName),
                            placeholder: (_, __) => const Icon(
                              Icons.question_mark_outlined,
                              color: PokedexColor.primaryContainer,
                            ),
                            errorWidget: (_, __, ___) => const Icon(Icons.error),
                          ),
                        );
                      }));
            }));
  }
}
