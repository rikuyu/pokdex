import 'package:pokedex/domain/use_case/all_item/get_all_item_use_case.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_item_state.g.dart';

@riverpod
class AllItemState extends _$AllItemState {
  @override
  Future<List<Item>> build() => ref.watch(getAllItemUseCaseProvider).getAllItems();
}
