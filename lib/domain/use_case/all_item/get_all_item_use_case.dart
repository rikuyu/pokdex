import 'package:pokedex/data/remote_data_source.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_item_use_case.g.dart';

@riverpod
GetAllItemUseCase getAllItemUseCase(GetAllItemUseCaseRef ref) => GetAllItemUseCase(ref.watch(remoteDataSourceProvider));

class GetAllItemUseCase {
  GetAllItemUseCase(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  Future<List<Item>> call() => remoteDataSource.getAllItems();
}
