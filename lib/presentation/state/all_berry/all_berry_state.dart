import 'package:pokedex/domain/use_case/all_berry/get_all_berry_use_case.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_berry_state.g.dart';

@riverpod
Future<List<Berry>> allBerryState(AllBerryStateRef ref) => ref.watch(getAllBerryUseCaseProvider).call();
